require 'spec_helper'
describe Skills::Persuasion do
  it { should be_named 'persuasion' }
  describe '#execute' do
    it 'influences an other beings opinion' do
      influenced_creature = stub(:creature)
      Creature.any_instance.stub(skill_level: 100)
      influenced_creature.should_receive(:increase_opinion).with(an_instance_of(Creature))

      subject.execute(Creature.new, target: influenced_creature)
    end
  end
end
