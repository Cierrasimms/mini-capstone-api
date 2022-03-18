class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true 
  validates :name, length: {minimum: 5}
  validates :name, uniqueness: true
  validates :description, length: { in: 10..500 }
  validates :description, presence: true
  validates :price, numericality: { greater_than: 0 }

def supplier
  Supplier.find_by(id: supplier_id)
end


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
