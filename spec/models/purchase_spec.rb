require 'spec_helper'

describe Purchase do
  let(:customer) { Customer.create(     name: 'Jimmy Joe',
                                        phone: '555-555-5555',
                                        email: 'foo@bar.com',
                                        address_1: '21 Main St',
                                        city: 'Springfield',
                                        country: 'USA') }

  let(:artist) {Artist.create(          name: 'Jimmy Joe',
                                        phone: '555-555-5555',
                                        email: 'foo@bar.com',
                                        address_1: '21 Main St',
                                        city: 'Springfield',
                                        country: 'USA',
                                        birth_city: 'Springfield',
                                        birth_country: 'USA',
                                        art_style: 'Impressionist') }

  let(:artwork) { Artwork.create(       title: 'Foo',
                                        creation_date: DateTime.now - 6.months,
                                        on_sale_date: DateTime.now - 1.weeks,
                                        price: 499.99,
                                        artist_id: artist.id,
                                        type: 'Painting') }

  let(:valid_purchase) { Purchase.new(  customer_id: customer.id,
                                        artwork_id: artwork.id) }

  it 'accepts a valid purchase' do
    expect(valid_purchase).to be_valid
  end

  it 'requires a customer id' do
    invalid_purchase = valid_purchase.dup
    invalid_purchase.customer_id = nil
    expect(invalid_purchase).to_not be_valid
  end

  it 'requires an artwork id' do
    invalid_purchase = valid_purchase.dup
    invalid_purchase.artwork_id = nil
    expect(invalid_purchase).to_not be_valid
  end

end
