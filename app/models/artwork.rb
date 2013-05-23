class Artwork < ActiveRecord::Base
  attr_accessible :art_collection_id, :artist_id, :creation_date, :on_sale_date, :price, :type, :title

  belongs_to  :artist,
              inverse_of: :artworks

  belongs_to  :art_collection,
              inverse_of: :artworks

  has_one :purchase,
          inverse_of: :artwork,
          dependent: :destroy

  validates_presence_of :type
  validates_presence_of :price
  validates_presence_of :creation_date
  validates_presence_of :title
  validates_presence_of :artist_id
  validates_presence_of :on_sale_date
end
