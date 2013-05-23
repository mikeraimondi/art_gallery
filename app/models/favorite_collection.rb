class FavoriteCollection < ActiveRecord::Base
  attr_accessible :art_collection_id, :customer_id

  validates_presence_of :art_collection_id
  validates_presence_of :customer_id
end
