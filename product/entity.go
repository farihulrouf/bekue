
package product

import (
	"behosting/user"
	"time"
)


type Product struct {
	ID               int
	UserID           int
	Name             string
	ShortDescription string
	Description      string
	Perks            string
	BackerCount      int
	Price            int
	CurrentAmount    int
	Slug             string
	CreatedAt        time.Time
	UpdatedAt        time.Time
	ProductImages 	 []ProductImage
	User 			 user.User
}

type ProductImage struct {
	ID         int
	ProductID int
	FileName   string
	IsPrimary  int
	CreatedAt  time.Time
	UpdatedAt  time.Time
}