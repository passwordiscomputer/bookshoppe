class Product < ApplicationRecord
  validates :price, :name, :presence => true
  has_many :order_items

end
