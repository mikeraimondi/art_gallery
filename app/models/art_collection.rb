class ArtCollection < ActiveRecord::Base
  attr_accessible :title

  validates_presence_of :title

  has_many :artworks,
           inverse_of: :art_collection

  has_many :favorite_collections,
           inverse_of: :art_collection,
           dependent: :destroy

  has_many :customers,
           through: :favorite_collections,
           inverse_of: :art_collections
end
