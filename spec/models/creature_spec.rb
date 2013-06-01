require 'spec_helper'

describe Creature do
  it 'exposes its XPs' do
    Creature.new(xp: 12).xp.should == 12
  end

  it 'determines its level from the xp' do
    Creature.new(xp: 1601).level.should == 3
  end

  context 'creature with items' do
    let(:creature) { Creature.make! }

    it 'recieves items' do
      creature.receive_items(food: 2)

      creature.items.should == { food: 2 }
    end
  end

  context 'creature with a skill' do
    let(:creature) { Creature.new }
    before do
      creature.add_skills(persuasion: 4)
    end

    it 'shows its skills in a list' do
      creature.skill_list.should include persuasion: 4
    end

    it 'exposes its skill level for a skill' do
      creature.skill_level(:persuasion).should == 4
    end

    it 'can use a skill' do
      other_creature = Creature.new

      Skills::Persuasion.any_instance.should_receive(:execute).with(
        creature, an_instance_of(Hash)
      )
      creature.use(:persuasion, target: other_creature)
    end
  end
end
