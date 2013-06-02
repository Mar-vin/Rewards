require 'spec_helper'

describe Skills::Gathering do
  it { should be_named 'gathering' }
  describe '#execute' do
    it 'gives a gathering entity food' do
      creature = stub(:create)
      creature.should_receive(:receive_items).with(food: 3)
      subject.execute(creature)
    end
  end
end
