class Purchase < ActiveRecord::Base
  attr_accessible :artwork_id, :customer_id

  validates_presence_of :artwork_id

  validates_presence_of :customer_id

  belongs_to :customer,
             inverse_of: :purchases

  belongs_to :artwork,
             inverse_of: :purchase
end
