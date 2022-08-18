class Order < ApplicationRecord
  belongs_to :user
  belongs_to :status

  validates :product_id, presence: true
end
