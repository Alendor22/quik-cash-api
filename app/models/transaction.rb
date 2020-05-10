class Transaction < ApplicationRecord

  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User"

  validates :item_name, :description, :price, presence: true
  validates :price, numericality: true

end
