class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.integer :artist_id, null: false
      t.integer :art_collection_id, null: false
      t.datetime :creation_date, null: false
      t.datetime :on_sale_date, null: false
      t.float :price, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
