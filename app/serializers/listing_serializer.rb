class ListingSerializer < ActiveModel::Serializer
  
  belongs_to :buyer
  belongs_to :seller
  attributes :id, :item_name, :description, :price, :sold, :buyer_id, :seller_id

end
