package transaction

import "behosting/user"

type GetProductTransactionsInput struct {
	ID   int `uri:"id" binding:"required"`
	User user.User
}

type CreateTransactionInput struct {
	Amount     int `json:"amount" binding:"required"`
	ProductID int `json:"product_id" binding:"required"`
	User       user.User
}

type TransactionNotificationInput struct {
	TransactionStatus string `json:"transaction_status"`
	OrderID           string `json:"order_id"`
	PaymentType       string `json:"payment_type"`
	FraudStatus       string `json:"fraud_status"`
}
type UpdateTransactionInput struct {
	//ID               int `uri:"id" binding:"required"`
	ID               int
	Status           string `json:"status"`
	User user.User

}