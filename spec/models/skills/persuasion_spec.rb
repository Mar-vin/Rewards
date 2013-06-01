require 'spec_helper'
describe Skills::Persuasion do
  describe '#execute' do
    it 'influences the other beings opinion' do
      influenced_creature = Creature.new
      Creature.any_instance.stub(skill_level: 100)
      influenced_creature.should_receive(:increase_opinion).with(an_instance_of(Creature))

      Skills::Persuasion.new.execute(Creature.new, target: influenced_creature)
    end
  end

  describe '#name' do
    it 'prints its own simple name' do
      Skills::Persuasion.new.name.should == 'persuasion'
    end
  end
end
