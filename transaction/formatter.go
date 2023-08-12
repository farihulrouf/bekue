package transaction

import (
	"time"
)

type ProductTransactionFormatter struct {
	ID        int       `json:"id"`
	Name      string    `json:"name"`
	Amount    int       `json:"amount"`
	Status    string    `json:"status"`
	CreatedAt time.Time `json:"created_at"`
}

func FormatProductTransaction(transaction Transaction) ProductTransactionFormatter {
	formatter := ProductTransactionFormatter{}
	formatter.ID = transaction.ID
	formatter.Name = transaction.User.Name
	formatter.Amount = transaction.Amount
	formatter.Status = transaction.Status
	formatter.CreatedAt = transaction.CreatedAt
	return formatter
}

func FormatProductTransactions(transactions []Transaction) []ProductTransactionFormatter {
	if len(transactions) == 0 {
		return []ProductTransactionFormatter{}
	}

	var transactionsFormatter []ProductTransactionFormatter

	for _, transaction := range transactions {
		formatter := FormatProductTransaction(transaction)
		transactionsFormatter = append(transactionsFormatter, formatter)
	}

	return transactionsFormatter
}

type UserTransactionFormatter struct {
	ID        int               `json:"id"`
	Amount    int               `json:"amount"`
	Status    string            `json:"status"`
	CreatedAt time.Time         `json:"created_at"`
	Product  ProductFormatter `json:"product"`
}

type ProductFormatter struct {
	Name     string `json:"name"`
	ImageURL string `json:"image_url"`
	Description string `json:"description"`
}

func FormatUserTransaction(transaction Transaction) UserTransactionFormatter {
	formatter := UserTransactionFormatter{}
	formatter.ID = transaction.ID
	formatter.Amount = transaction.Amount
	formatter.Status = transaction.Status
	formatter.CreatedAt = transaction.CreatedAt

	productFormatter := ProductFormatter{}
	productFormatter.Name = transaction.Product.Name
	productFormatter.ImageURL = ""
	productFormatter.Description = transaction.Product.Description

	if len(transaction.Product.ProductImages) > 0 {
		productFormatter.ImageURL = transaction.Product.ProductImages[0].FileName
	}

	formatter.Product = productFormatter

	return formatter
}

func FormatUserTransactions(transactions []Transaction) []UserTransactionFormatter {
	if len(transactions) == 0 {
		return []UserTransactionFormatter{}
	}

	var transactionsFormatter []UserTransactionFormatter

	for _, transaction := range transactions {
		formatter := FormatUserTransaction(transaction)
		transactionsFormatter = append(transactionsFormatter, formatter)
	}

	return transactionsFormatter
}

type TransactionFormatter struct {
	ID         int    `json:"id"`
	ProductID int    `json:"product_id"`
	UserID     int    `json:"user_id"`
	Amount     int    `json:"amount"`
	Status     string `json:"status"`
	Code       string `json:"code"`
	PaymentURL string `json:"payment_url"`
}

func FormatTransaction(transaction Transaction) TransactionFormatter {
	formatter := TransactionFormatter{}
	formatter.ID = transaction.ID
	formatter.ProductID = transaction.ProductID
	formatter.UserID = transaction.UserID
	formatter.Amount = transaction.Amount
	formatter.Status = transaction.Status
	formatter.Code = transaction.Code
	formatter.PaymentURL = transaction.PaymentURL
	return formatter
}
