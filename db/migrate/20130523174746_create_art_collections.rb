class CreateArtCollections < ActiveRecord::Migration
  def change
    create_table :art_collections do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
