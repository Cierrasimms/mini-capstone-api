class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :phone_number, uniqueness: true
  validates :phone_number, presence: true
  

has_many :products

end