require 'spec_helper'

describe Artwork do

 let(:artist) {Artist.create(        name: 'Jimmy Joe',
                                    phone: '555-555-5555',
                                    email: 'foo@bar.com',
                                    address_1: '21 Main St',
                                    city: 'Springfield',
                                    country: 'USA',
                                    birth_city: 'Springfield',
                                    birth_country: 'USA',
                                    art_style: 'Impressionist') }


  let(:art_collection) { ArtCollection.create(title: 'Foo Collection') }

  let(:valid_artwork) { Artwork.new(    title: 'Foo',
                                        creation_date: DateTime.now - 6.months,
                                        on_sale_date: DateTime.now - 1.weeks,
                                        price: 499.99,
                                        artist_id: artist.id,
                                        art_collection_id: art_collection.id,
                                        art_type: 'Painting') }

  it 'accepts a valid artwork' do
    expect(valid_artwork).to be_valid
  end

  it 'requires a title' do
    invalid_artwork = valid_artwork.dup
    invalid_artwork.title = nil
    expect(invalid_artwork).to_not be_valid
  end

  it 'requires a creation date' do
    invalid_artwork = valid_artwork.dup
    invalid_artwork.creation_date = nil
    expect(invalid_artwork).to_not be_valid
  end

  it 'requires an on sale date' do
    invalid_artwork = valid_artwork.dup
    invalid_artwork.on_sale_date = nil
    expect(invalid_artwork).to_not be_valid
  end

  it 'requires a price' do
    invalid_artwork = valid_artwork.dup
    invalid_artwork.price = nil
    expect(invalid_artwork).to_not be_valid
  end

  it 'requires a art_type' do
    invalid_artwork = valid_artwork.dup
    invalid_artwork.art_type = nil
    expect(invalid_artwork).to_not be_valid
  end

  it 'requires an artist id' do
    invalid_artwork = valid_artwork.dup
    invalid_artwork.artist_id = nil
    expect(invalid_artwork).to_not be_valid
  end

end
