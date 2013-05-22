require 'spec_helper'

describe Customer do
  let(:valid_customer) {Customer.new( name: 'Jimmy Joe',
                                      phone: '555-555-5555',
                                      email: 'foo@bar.com',
                                      address_1: '21 Main St',
                                      city: 'Springfield',
                                      country: 'USA') }

  it 'accepts a valid customer' do
    expect(valid_customer).to be_valid
  end

  it 'requires a name' do
    invalid_customer = valid_customer.dup
    invalid_customer.name = nil
    expect(invalid_customer).to_not be_valid
  end

  it 'requires an email' do
    invalid_customer = valid_customer.dup
    invalid_customer.email = nil
    expect(invalid_customer).to_not be_valid
  end

  it 'requires an address' do
    invalid_customer = valid_customer.dup
    invalid_customer.address_1 = nil
    expect(invalid_customer).to_not be_valid
  end

  it 'requires a city' do
    invalid_customer = valid_customer.dup
    invalid_customer.city = nil
    expect(invalid_customer).to_not be_valid
  end

  it 'requires a country' do
    invalid_customer = valid_customer.dup
    invalid_customer.country = nil
    expect(invalid_customer).to_not be_valid
  end

  it 'requires an email with @' do
    invalid_customer = valid_customer.dup
    invalid_customer.email = 'foo'
    expect(invalid_customer).to_not be_valid
  end

  it 'requires a unique email' do
    valid_customer.save
    invalid_customer = valid_customer.dup
    expect(invalid_customer).to_not be_valid
  end

end
