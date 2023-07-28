package product

import "behosting/user"

type GetProductDetailInput struct {
	ID int `uri:"id" binding:"required"`
}

type CreateProductInput struct {
	Name             string `json:"name" binding:"required"`
	ShortDescription string `json:"short_description" binding:"required"`
	Description      string `json:"description" binding:"required"`
	Price            int    `json:"price" binding:"required"`
	Discount         int    `json:"discount" binding:"required"`
	Discountwo       int    `json:"discountwo" binding:"required"`
	Perks            string `json:"perks" binding:"required"`
	User             user.User
}

type CreateProductImageInput struct {
	ProductID int  `form:"product_id" binding:"required"`
	IsPrimary  bool `form:"is_primary"`
	User       user.User
}

type FormCreateProductInput struct {
	Name             string `form:"name" binding:"required"`
	ShortDescription string `form:"short_description" binding:"required"`
	Description      string `form:"description" binding:"required"`
	Price      		 int    `form:"price" binding:"required"`
	Discount         int    `form:"discount" binding:"required"`
	Discountwo       int    `form:"discountwo" binding:"required"`
	Perks            string `form:"perks" binding:"required"`
	UserID           int    `form:"user_id" binding:"required"`
	Users            []user.User
	Error            error
}

type FormUpdateProductInput struct {
	ID               int
	Name             string `form:"name" binding:"required"`
	ShortDescription string `form:"short_description" binding:"required"`
	Description      string `form:"description" binding:"required"`
	Price            int    `form:"price" binding:"required"`
	Discount         int    `from:"discount" binding:"required"`
	Discountwo       int    `from:"discountwo" binding:"required"`
	Perks            string `form:"perks" binding:"required"`
	Error            error
	User             user.User
}
