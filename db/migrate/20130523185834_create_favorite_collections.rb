class CreateFavoriteCollections < ActiveRecord::Migration
  def change
    create_table :favorite_collections do |t|
      t.integer :customer_id, null: false
      t.integer :art_collection_id, null: false

      t.timestamps
    end
  end
end
