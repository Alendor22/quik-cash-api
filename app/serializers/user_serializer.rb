class UserSerializer < ActiveModel::Serializer
  
  has_many :buyer_transactions
  has_many :seller_transactions
  attributes :id, :username, :location, :bio

end
