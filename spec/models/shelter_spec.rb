require 'spec_helper'

describe Shelter do
  it { should cost(wood: 3)}

  describe '.establish' do
    it 'creates a Location' do
      location = { x: 1, y: 1, z:1 }
      Location.should_receive(:create!).with(type: 'Shelter', x: 1, y: 1, z: 1)
      Shelter.establish(location)
    end
  end
end
