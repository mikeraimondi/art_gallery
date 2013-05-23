class CreateArtCollections < ActiveRecord::Migration
  def change
    create_table :art_collections do |t|
      t.string :title

      t.timestamps
    end
  end
end
