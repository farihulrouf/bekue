package product

import (
	"errors"
	"fmt"

	"github.com/gosimple/slug"
)


type Service interface {
	GetProducts(userID int) ([]Product, error)
	GetProductByID(input GetProductDetailInput) (Product, error)
	CreateProduct(input CreateProductInput) (Product, error)
	UpdateProduct(inputID GetProductDetailInput, inputData CreateProductInput) (Product, error)
	SaveProductImage(input CreateProductImageInput, fileLocation string) (ProductImage, error)
}

type service struct {
	repository Repository
}

func NewService(repository Repository) *service {
	return &service{repository}
}

func (s *service) GetProducts(userID int) ([]Product, error) {
	if userID != 0 {
		products, err := s.repository.FindByUserID(userID)
		if err != nil {
			return products, err
		}

		return products, nil
	}

	products, err := s.repository.FindAll()
	if err != nil {
		return products, err
	}

	return products, nil
}

func (s *service) GetProductByID(input GetProductDetailInput) (Product, error) {
	product, err := s.repository.FindByID(input.ID)
	if err != nil {
		return product, err
	}

	return product, nil
}

func (s *service) CreateProduct(input CreateProductInput) (Product, error) {
	product := Product{}
	product.Name = input.Name
	product.ShortDescription = input.ShortDescription
	product.Description = input.Description
	product.Price = input.Price
	product.Perks = input.Perks
	product.UserID = input.User.ID
	// making slug unik with add id user on string slug
	slugCandidate := fmt.Sprintf("%s %d", input.Name, input.User.ID)
	product.Slug = slug.Make(slugCandidate)

	newProduct, err := s.repository.Save(product)
	if err != nil {
		return newProduct, err
	}

	return newProduct, nil
}

func (s *service) UpdateProduct(inputID GetProductDetailInput, inputData CreateProductInput) (Product, error) {
	product, err := s.repository.FindByID(inputID.ID)
	if err != nil {
		return product, err
	}

	if product.UserID != inputData.User.ID {
		return product, errors.New("not owned of the product")
	}

	product.Name = inputData.Name
	product.ShortDescription = inputData.ShortDescription
	product.Description = inputData.Description
	product.Price = inputData.Price
	product.Perks = inputData.Perks

	updatedProduct, err := s.repository.Update(product)
	if err != nil {
		return updatedProduct, err
	}

	return updatedProduct, nil
}

func (s *service) SaveProductImage(input CreateProductImageInput, fileLocation string) (ProductImage, error) {
	product, err := s.repository.FindByID(input.ProductID)
	if err != nil {
		return ProductImage{}, err
	}

	if product.UserID != input.User.ID {
		return ProductImage{}, errors.New("not owned of the product")
	}

	isPrimary := 0

	if input.IsPrimary {
		isPrimary = 1
		_, err := s.repository.MarkAllImagesAsNonPrimary(input.ProductID)
		if err != nil {
			return ProductImage{}, err
		}
	}

	productImage := ProductImage{}
	productImage.ProductID = input.ProductID
	productImage.IsPrimary = isPrimary
	productImage.FileName = fileLocation

	newProductImage, err := s.repository.CreateImage(productImage)
	if err != nil {
		return newProductImage, err
	}

	return newProductImage, nil
}