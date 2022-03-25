class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true 
  validates :name, length: {minimum: 5}
  validates :name, uniqueness: true
  validates :description, length: { in: 10..500 }
  validates :description, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :supplier
  has_many :orders
  has_many :images
  has_many :category_product
  has_many :categories, through: :category_product


  def is_discounted? 
  if price < 10
     return true
  else
     return false
end
end

def tax
  tax = price * 0.09
  return tax
end

def total
total = price + tax
return total
end




end
