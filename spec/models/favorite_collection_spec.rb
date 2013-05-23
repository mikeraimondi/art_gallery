require 'spec_helper'

describe FavoriteCollection do
  let(:customer) {Customer.create(    name: 'Jimmy Joe',
                                      phone: '555-555-5555',
                                      email: 'foo@bar.com',
                                      address_1: '21 Main St',
                                      city: 'Springfield',
                                      country: 'USA') }

  let(:art_collection) { ArtCollection.create(title: 'Foobar') }

  let(:valid_favorite_collection) { FavoriteCollection.new( customer_id: customer.id,
                                                            art_collection_id: art_collection.id ) }

  it 'accepts a valid favorite collection' do
    expect(valid_favorite_collection).to be_valid
  end

  it 'requires a customer id' do
    invalid_favorite_collection = valid_favorite_collection.dup
    invalid_favorite_collection.customer_id = nil
    expect(invalid_favorite_collection).to_not be_valid
  end

  it 'requires an art collection id' do
    invalid_favorite_collection = valid_favorite_collection.dup
    invalid_favorite_collection.art_collection_id = nil
    expect(invalid_favorite_collection).to_not be_valid
  end

end
