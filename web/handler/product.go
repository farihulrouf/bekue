package handler

import (
	"behosting/product"
	"behosting/user"
	"fmt"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

type productHandler struct {
	productService product.Service
	userService     user.Service
}


func NewProductHandler(productService product.Service, userService user.Service) *productHandler {
	return &productHandler{productService, userService}
}

func (h *productHandler) Index(c *gin.Context) {
	products, err := h.productService.GetProducts(0)
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	c.HTML(http.StatusOK, "product_index.html", gin.H{"products": products})
}

func (h *productHandler) New(c *gin.Context) {
	users, err := h.userService.GetAllUsers()
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	input := product.FormCreateProductInput{}
	input.Users = users

	c.HTML(http.StatusOK, "product_new.html", input)
}

func (h *productHandler) Create(c *gin.Context) {
	var input product.FormCreateProductInput

	err := c.ShouldBind(&input)
	if err != nil {
		users, e := h.userService.GetAllUsers()
		if e != nil {
			c.HTML(http.StatusInternalServerError, "error.html", nil)
			return
		}

		input.Users = users
		input.Error = err

		c.HTML(http.StatusOK, "product_new.html", input)
		return
	}

	user, err := h.userService.GetUserByID(input.UserID)
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	createProductInput := product.CreateProductInput{}
	createProductInput.Name = input.Name
	createProductInput.ShortDescription = input.ShortDescription
	createProductInput.Description = input.Description
	createProductInput.Price = input.Price
	createProductInput.Discount = input.Discount
	createProductInput.Discountwo = input.Discountwo
	createProductInput.Perks = input.Perks
	createProductInput.User = user

	_, err = h.productService.CreateProduct(createProductInput)
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	c.Redirect(http.StatusFound, "/products")
}

func (h *productHandler) NewImage(c *gin.Context) {
	idParam := c.Param("id")
	id, _ := strconv.Atoi(idParam)

	c.HTML(http.StatusOK, "product_image.html", gin.H{"ID": id})
}

func (h *productHandler) CreateImage(c *gin.Context) {
	file, err := c.FormFile("file")
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	idParam := c.Param("id")
	id, _ := strconv.Atoi(idParam)

	existingProduct, err := h.productService.GetProductByID(product.GetProductDetailInput{ID: id})
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	userID := existingProduct.UserID

	path := fmt.Sprintf("images/%d-%s", userID, file.Filename)

	err = c.SaveUploadedFile(file, path)
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	createProductImageInput := product.CreateProductImageInput{}
	createProductImageInput.ProductID = id
	createProductImageInput.IsPrimary = true

	userProduct, err := h.userService.GetUserByID(userID)
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	createProductImageInput.User = userProduct

	_, err = h.productService.SaveProductImage(createProductImageInput, path)
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	c.Redirect(http.StatusFound, "/products")
}

func (h *productHandler) Edit(c *gin.Context) {
	idParam := c.Param("id")
	id, _ := strconv.Atoi(idParam)

	existingProduct, err := h.productService.GetProductByID(product.GetProductDetailInput{ID: id})
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	input := product.FormUpdateProductInput{}
	input.ID = existingProduct.ID
	input.Name = existingProduct.Name
	input.ShortDescription = existingProduct.ShortDescription
	input.Description = existingProduct.Description
	input.Price = existingProduct.Price
	input.Discount = existingProduct.Discount
	input.Discountwo = existingProduct.Discountwo
	input.Perks = existingProduct.Perks

	c.HTML(http.StatusOK, "product_edit.html", input)
}

func (h *productHandler) Update(c *gin.Context) {
	idParam := c.Param("id")
	id, _ := strconv.Atoi(idParam)

	var input product.FormUpdateProductInput

	err := c.ShouldBind(&input)
	if err != nil {
		input.Error = err
		input.ID = id
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	existingProduct, err := h.productService.GetProductByID(product.GetProductDetailInput{ID: id})
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	userID := existingProduct.UserID

	userProduct, err := h.userService.GetUserByID(userID)
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	updateInput := product.CreateProductInput{}
	updateInput.Name = input.Name
	updateInput.ShortDescription = input.ShortDescription
	updateInput.Description = input.Description
	updateInput.Price = input.Price
	updateInput.Discount = input.Discount
	updateInput.Discountwo = input.Discountwo
	updateInput.Perks = input.Perks
	updateInput.User = userProduct

	_, err = h.productService.UpdateProduct(product.GetProductDetailInput{ID: id}, updateInput)
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
		return
	}

	c.Redirect(http.StatusFound, "/products")
}

func (h *productHandler) Show(c *gin.Context) {
	idParam := c.Param("id")
	id, _ := strconv.Atoi(idParam)

	existingProduct, err := h.productService.GetProductByID(product.GetProductDetailInput{ID: id})
	if err != nil {
		c.HTML(http.StatusInternalServerError, "error.html", nil)
	}

	c.HTML(http.StatusOK, "product_show.html", existingProduct)
}
