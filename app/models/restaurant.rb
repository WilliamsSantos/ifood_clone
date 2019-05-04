class Restaurant < ApplicationRecord
  geocoded_by :address 
  after_validation :geocode
  
  
  belongs_to :category	
  has_many :product_categories
  has_many :orders
  has_many :reviews
  enum status: { closed: 0, open: 1 }	
  has_one_attached :image


  validates_associated :category
  validates :name, :status, :delivery_tax, :city, :street, presence: true

  
   
  def address
    [street, number, city, state].compact.join(', ')
  end
end
