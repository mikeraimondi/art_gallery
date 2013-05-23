require 'spec_helper'

describe ArtCollection do
  let(:valid_art_collection) { ArtCollection.new(title: 'Foobar') }

  it 'accepts a valid art collection' do
    expect(valid_art_collection).to be_valid
  end

  it 'requires a title' do
    invalid_art_collection = valid_art_collection.dup
    invalid_art_collection.title = nil
    expect(invalid_art_collection).to_not be_valid
  end
end
