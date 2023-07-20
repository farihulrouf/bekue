package transaction

import (
	"behosting/product"
	"behosting/user"
	"time"
)


type Transaction struct {
	ID         int
	ProductID int
	UserID     int	
	Amount     int
	Status     string
	Code       string
	PaymentURL string
	User 	   user.User
	Product    product.Product
	CreatedAt  time.Time
	UpdatedAt  time.Time
}