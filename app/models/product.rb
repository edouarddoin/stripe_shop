class Product < ApplicationRecord
  validates :price, :stock, :description, presence: true
end
