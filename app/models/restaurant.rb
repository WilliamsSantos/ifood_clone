class Restaurant < ApplicationRecord
  belongs_to :category	
  has_many :product_categories
  has_many :orders
  has_many :reviews
  enum status: { closed: 0, open: 1 }

  validates_associated :category
  validates :name, :status, :delivery_tax, :city, :street, presence: true
  


end
