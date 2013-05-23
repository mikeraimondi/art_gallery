# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customer = Customer.create(          name: 'Jimmy Joe',
                                      phone: '555-555-5555',
                                      email: 'foo@bar.com',
                                      address_1: '21 Main St',
                                      city: 'Springfield',
                                      country: 'USA')

artist = Artist.create(               name: 'Jimmy Joe',
                                      phone: '555-555-5555',
                                      email: 'foo@bar.com',
                                      address_1: '21 Main St',
                                      city: 'Springfield',
                                      country: 'USA',
                                      birth_city: 'Springfield',
                                      birth_country: 'USA',
                                      art_style: 'Impressionist')

artwork = Artwork.create(             title: 'Foo',
                                      creation_date: DateTime.now - 6.months,
                                      on_sale_date: DateTime.now - 1.weeks,
                                      price: 499.99,
                                      artist_id: artist.id,
                                      art_type: 'Painting')
