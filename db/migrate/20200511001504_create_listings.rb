class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :item_name
      t.text :description
      t.float :price
      t.boolean :sold, default: false
      t.integer :seller_id, foreign_key: true
      t.integer :buyer_id, foreign_key: true

      t.timestamps
    end
  end
end
