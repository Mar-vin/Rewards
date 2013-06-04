require 'spec_helper'

describe Skills::Building do
  it { should be_named('building') }
  let(:builder_coordinates) { { x: 12, y: 92, z: 101 } }
  let(:builder)             { stub(:builder, coordinates: builder_coordinates).as_null_object }
  let(:shelter_params)      { { building_type: 'shelter' } }

  context 'used to create a building' do
    it 'creates a new location' do
      Shelter.should_receive(:establish).with(builder_coordinates)
      subject.execute(builder, shelter_params)
    end
  end

  it "uses the actor's ressources" do
    Shelter.stub(:establish)
    builder.should_receive(:remove_items).with(wood: 3)
    subject.execute(builder, shelter_params)
  end
end
