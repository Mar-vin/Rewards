require 'spec_helper'

describe 'seeing a location' do
  let(:location) {
    Location.create!(type: 'Shelter', name: 'LOCATION', x: 1, y: 3, z: 2)
  }

  it 'shows its name' do
    visit location_path(location)
    page.should have_content 'LOCATION'
  end
end
