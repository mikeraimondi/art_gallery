class Purchase < ActiveRecord::Base
  attr_accessible :artwork_id, :customer_id

  validates_presence_of :artwork_id

  validates_presence_of :customer_id
end
