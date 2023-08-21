package transaction

import "gorm.io/gorm"

type Repository interface {
	GetByProductID(productID int) ([]Transaction, error)
	GetByUserID(userID int) ([]Transaction, error)

	//GetByUSerID(ID int) ([]Transaction, error)
	GetByID(userID int) (Transaction, error)
	Save(transaction Transaction) (Transaction, error)
	Update(transaction Transaction) (Transaction, error)
	FindAll() ([]Transaction, error)
}

type repository struct {
	db *gorm.DB
}

func NewRepository(db *gorm.DB) *repository {
	return &repository{db}
}

func (r *repository) GetByProductID(productID int) ([]Transaction, error) {
	var transactions []Transaction

	err := r.db.Preload("User").Where("product_id = ?", productID).Order("id desc").Find(&transactions).Error
	if err != nil {
		return transactions, err
	}

	return transactions, nil
}

func (r *repository) GetByUserID(userID int) ([]Transaction, error) {
	var transactions []Transaction

	err := r.db.Preload("Product.ProductImages", "product_images.is_primary = 1").Where("user_id = ?", userID).Order("id desc").Find(&transactions).Error
	if err != nil {
		return transactions, err
	}

	return transactions, nil
}

func (r *repository) GetByID(ID int) (Transaction, error) {
	var transaction Transaction
	err := r.db.Where("id = ?", ID).Find(&transaction).Error
	if err != nil {
		return transaction, err
	}

	return transaction, nil
}

func (r *repository) Save(transaction Transaction) (Transaction, error) {
	err := r.db.Create(&transaction).Error
	if err != nil {
		return transaction, err
	}
	return transaction, nil
}

func (r *repository) Update(transaction Transaction) (Transaction, error) {
	err := r.db.Save(&transaction).Error

	if err != nil {
		return transaction, err
	}

	return transaction, nil
}

func (r *repository) FindAll() ([]Transaction, error) {
	var transactions []Transaction
	//db.Model(&User{}).Limit(10).Find(&APIUser{})
	//err := r.db.Preload("Product").Order("id desc").Limit(5).Find(&transactions).Error

	err := r.db.Preload("Product").Order("id desc").Find(&transactions).Error
	if err != nil {
		return transactions, err
	}

	return transactions, nil
}