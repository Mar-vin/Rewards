require 'spec_helper'

shared_examples_for 'an entity with coordinates' do
  let(:entity)   { described_class.new(x: 0, y: 0, z: 0) }
  let(:coordinates) { entity.coordinates }

  it { should have_coordinates }
  it 'knows about close buildings' do
    present_shelter = Location.create!(
      type: 'Shelter', x: coordinates[:x], y: coordinates[:y], z: coordinates[:z]
    )

    entity.present_locations.should == [present_shelter]
  end
end

describe Shelter do
  it_behaves_like 'an entity with coordinates'
end

describe Creature do
  it_behaves_like 'an entity with coordinates'
end
