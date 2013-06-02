require 'spec_helper'
describe Skills::Woodcutting do
  it { should be_named 'woodcutting' }
  describe '#execute' do
    it 'gives a gathering entity wood' do
      creature = stub(:creature)
      creature.should_receive(:receive_items).with(wood: 3)
      subject.execute(creature)
    end
  end
end
