require 'spec_helper'

describe Skills::Building do
  it { should be_named('building') }
  let(:builder_location) { { x: 12, y: 92, z: 101 } }
  let(:builder)          { stub(:builder, location: builder_location).as_null_object }

  context 'used to create a building' do
    it 'creates a new location' do
      Shelter.should_receive(:establish).with(location: builder_location)
      subject.execute(builder, 'shelter')
    end
  end

  it "uses the actor's ressources" do
    Shelter.stub(:establish)
    builder.should_receive(:remove_items).with(wood: 3)
    subject.execute(builder, 'shelter')
  end
end
