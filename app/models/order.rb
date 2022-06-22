class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :products_id, presence: true
  validates :user_id, presence: true
end
