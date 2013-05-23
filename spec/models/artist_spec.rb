require 'spec_helper'

describe Artist do
   let(:valid_artist) {Artist.new(    name: 'Jimmy Joe',
                                      phone: '555-555-5555',
                                      email: 'foo@bar.com',
                                      address_1: '21 Main St',
                                      city: 'Springfield',
                                      country: 'USA',
                                      birth_city: 'Springfield',
                                      birth_country: 'USA',
                                      art_style: 'Impressionist') }

  it 'accepts a valid artist' do
    expect(valid_artist).to be_valid
  end

  it 'requires a name' do
    invalid_artist = valid_artist.dup
    invalid_artist.name = nil
    expect(invalid_artist).to_not be_valid
  end

  it 'requires an email' do
    invalid_artist = valid_artist.dup
    invalid_artist.email = nil
    expect(invalid_artist).to_not be_valid
  end

  it 'requires an address' do
    invalid_artist = valid_artist.dup
    invalid_artist.address_1 = nil
    expect(invalid_artist).to_not be_valid
  end

  it 'requires a city' do
    invalid_artist = valid_artist.dup
    invalid_artist.city = nil
    expect(invalid_artist).to_not be_valid
  end

  it 'requires a country' do
    invalid_artist = valid_artist.dup
    invalid_artist.country = nil
    expect(invalid_artist).to_not be_valid
  end

  it 'requires a birth city' do
    invalid_artist = valid_artist.dup
    invalid_artist.birth_city = nil
    expect(invalid_artist).to_not be_valid
  end

  it 'requires a birth country' do
    invalid_artist = valid_artist.dup
    invalid_artist.birth_country = nil
    expect(invalid_artist).to_not be_valid
  end

  it 'requires an art style' do
    invalid_artist = valid_artist.dup
    invalid_artist.art_style = nil
    expect(invalid_artist).to_not be_valid
  end

  it 'requires an email with @' do
    invalid_artist = valid_artist.dup
    invalid_artist.email = 'foo'
    expect(invalid_artist).to_not be_valid
  end

  it 'requires a unique email' do
    valid_artist.save
    invalid_artist = valid_artist.dup
    expect(invalid_artist).to_not be_valid
  end 
  
end
