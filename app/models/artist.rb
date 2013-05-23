class Artist < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :art_style, :birth_city, :birth_country, :city, :country, :email, :name, :phone, :state, :zip

  validates_presence_of :name
  validates_presence_of :phone
  validates_presence_of :email
  validates_presence_of :address_1
  validates_presence_of :city
  validates_presence_of :country
  validates_presence_of :birth_city
  validates_presence_of :birth_country
  validates_presence_of :art_style

  validates_format_of :email, with: /@/

  validates_uniqueness_of :email

end
