class User < ApplicationRecord

  has_many :seller_transactions, foreign_key: :buyer_id, class_name: "Transaction"
  has_many :buyers, through: :seller_transactions
  has_many :items_on_sale, through: :seller_transactions
  
  has_many :buyer_transactions, foreign_key: :seller_id, class_name: "Transaction"
  has_many :sellers, through: :buyer_transactions
  
  has_many :transactions, dependent: :destroy

  validates :username, :location, presence: true
  validates :username, uniqueness: true

  has_secure_password

end
