class Artwork < ActiveRecord::Base
  attr_accessible :art_collection_id, :artist_id, :creation_date, :on_sale_date, :price, :type, :title

  belongs_to :artist
  belongs_to :art_collection

  validates_presence_of :art_collection_id
  validates_presence_of :type
  validates_presence_of :price
  validates_presence_of :creation_date
  validates_presence_of :title
  validates_presence_of :artist_id
  validates_presence_of :on_sale_date
end
