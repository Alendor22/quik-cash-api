class Listing < ApplicationRecord

  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id", optional: true
  
  validates :item_name, :description, :price, presence: true
  validates :price, numericality: true

end