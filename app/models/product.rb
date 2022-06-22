class Product < ApplicationRecord
  validates :price, presence: true
  validates :stock, presence: true

end
