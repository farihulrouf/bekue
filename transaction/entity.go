package transaction

import (
	"behosting/product"
	"behosting/user"
	"time"
	"github.com/leekchan/accounting"
)

type Transaction struct {
	ID         int
	ProductID int
	UserID     int
	Amount     int
	Status     string
	Code       string
	PaymentURL string
	Address    string
	User       user.User
	Product   product.Product
	CreatedAt  time.Time
	UpdatedAt  time.Time
}

func (t Transaction) AmountFormatIDR() string {
	ac := accounting.Accounting{Symbol: "Rp", Precision: 2, Thousand: ".", Decimal: ","}
	return ac.FormatMoney(t.Amount)
}
