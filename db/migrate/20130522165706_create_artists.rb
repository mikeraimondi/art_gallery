class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.string :address_1, null: false
      t.string :address_2
      t.string :city, null: false
      t.string :state
      t.integer :zip
      t.string :country, null: false
      t.string :birth_city, null: false
      t.string :birth_country, null: false
      t.string :art_style, null: false

      t.timestamps
    end
  end
end
