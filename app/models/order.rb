class Order < ApplicationRecord
  belongs_to :user
  belongs_to :status

  validates :user_id, :status_id, :total_price
end
