class User < ApplicationRecord

  # has_many :listings
  
  has_many :seller_transactions, class_name: "Listing", foreign_key: "seller_id"
  has_many :buyers, through: :seller_transactions, source: :buyer

  has_many :buyer_transactions, class_name: "Listing", foreign_key: "buyer_id"
  has_many :sellers, through: :buyer_transactions, source: :seller
  
  validates :username, presence: true
  validates :username, uniqueness: true

  has_secure_password

  # def all_listings
  #   buyer_transactions + seller_transactions
  # end

end
