package transaction

import (
	"behosting/product"
	"behosting/payment"
	"errors"
	"strconv"
)

type service struct {
	repository         Repository
	productRepository product.Repository
	paymentService     payment.Service
}

type Service interface {
	GetTransactionsByProductID(input GetProductTransactionsInput) ([]Transaction, error)
	GetTransactionsByUserID(userID int) ([]Transaction, error)
	CreateTransaction(input CreateTransactionInput) (Transaction, error)
	ProcessPayment(input TransactionNotificationInput) error
	GetAllTransactions() ([]Transaction, error)
}

func NewService(repository Repository, productRepository product.Repository, paymentService payment.Service) *service {
	return &service{repository, productRepository, paymentService}
}

func (s *service) GetTransactionsByProductID(input GetProductTransactionsInput) ([]Transaction, error) {
	product, err := s.productRepository.FindByID(input.ID)
	if err != nil {
		return []Transaction{}, err
	}

	if product.UserID != input.User.ID {
		return []Transaction{}, errors.New("Not an owner of the product")
	}

	transactions, err := s.repository.GetByProductID(input.ID)
	if err != nil {
		return transactions, err
	}

	return transactions, nil
}



func (s *service) GetTransactionsByUserID(userID int) ([]Transaction, error) {
	transactions, err := s.repository.GetByUserID(userID)
	if err != nil {
		return transactions, err
	}

	return transactions, nil
}

func (s *service) CreateTransaction(input CreateTransactionInput) (Transaction, error) {
	transaction := Transaction{}
	transaction.ProductID = input.ProductID
	transaction.Amount = input.Amount
	transaction.UserID = input.User.ID
	transaction.Status = "pending"

	newTransaction, err := s.repository.Save(transaction)
	if err != nil {
		return newTransaction, err
	}

	paymentTransacation := payment.Transaction{
		ID:     newTransaction.ID,
		Amount: newTransaction.Amount,
	}

	paymentURL, err := s.paymentService.GetPaymentURL(paymentTransacation, input.User)
	if err != nil {
		return newTransaction, err
	}

	newTransaction.PaymentURL = paymentURL

	newTransaction, err = s.repository.Update(newTransaction)
	if err != nil {
		return newTransaction, err
	}

	return newTransaction, nil
}

func (s *service) ProcessPayment(input TransactionNotificationInput) error {
	transaction_id, _ := strconv.Atoi(input.OrderID)

	transaction, err := s.repository.GetByID(transaction_id)
	if err != nil {
		return err
	}

	if input.PaymentType == "credit_card" && input.TransactionStatus == "capture" && input.FraudStatus == "accept" {
		transaction.Status = "paid"
	} else if input.TransactionStatus == "settlement" {
		transaction.Status = "paid"
	} else if input.TransactionStatus == "deny" || input.TransactionStatus == "expire" || input.TransactionStatus == "cancel" {
		transaction.Status = "cancelled"
	}

	updatedTransaction, err := s.repository.Update(transaction)
	if err != nil {
		return err
	}

	product, err := s.productRepository.FindByID(updatedTransaction.ProductID)
	if err != nil {
		return err
	}

	if updatedTransaction.Status == "paid" {
		product.BackerCount = product.BackerCount + 1
		product.CurrentAmount = product.CurrentAmount + updatedTransaction.Amount

		_, err := s.productRepository.Update(product)
		if err != nil {
			return err
		}
	}

	return nil
}

func (s *service) GetAllTransactions() ([]Transaction, error) {
	transactions, err := s.repository.FindAll()
	if err != nil {
		return transactions, err
	}

	return transactions, nil
}
