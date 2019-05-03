class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products
  enum status: { waiting: 0, delivered: 1 }

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :total_value, presence: true
end
