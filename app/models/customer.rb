class Customer < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :country, :email, :name, :phone, :state, :zip

  # method on customer that returns total amount spent
  # method on artworks that returns true if purchased, else false 
end
