class Customer < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :country, :email, :name, :phone, :state, :zip

  validates_presence_of :name
  validates_presence_of :phone
  validates_presence_of :email
  validates_presence_of :address_1
  validates_presence_of :city
  validates_presence_of :country

  validates_format_of :email, with: /@/

  validates_uniqueness_of :email

  has_many :favorite_collections,
           inverse_of: :customer,
           dependent: :destroy

  has_many :art_collections,
           through: :favorite_collections,
           inverse_of: :customers

  has_many :purchases,
           inverse_of: :customer,
           dependent: :destroy

  has_many :artworks,
           through: :purchases,
           inverse_of: :customer

  def total_amount_spent
    total = 0.0

    purchases.each { |purchase| total += purchase.artwork.price }

    total.round(2)
  end
  # method on customer that returns total amount spent
  # method on artworks that returns true if purchased, else false 
end
