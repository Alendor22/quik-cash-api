class User < ApplicationRecord

  has_many :listings

  has_many :seller_transactions, through: :buyers, foreign_key: "buyer_id", class_name: "Listing"
  has_many :buyer_transactions, through: :sellers, foreign_key: "seller_id", class_name: "Listing"
  has_many :buyers, through: :seller_transactions
  has_many :sellers, through: :buyer_transactions

  validates :username, :location, presence: true
  validates :username, uniqueness: true

  has_secure_password

end
