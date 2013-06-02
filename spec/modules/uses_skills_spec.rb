require 'spec_helper'

shared_examples_for 'a skill user' do
  let(:skill_user) { described_class.new }

  before do
    skill_user.add_skills(persuasion: 4)
  end

  it 'shows its skills in a list' do
    skill_user.skill_list.should include persuasion: 4
  end

  it 'exposes its skill level for a skill' do
    skill_user.skill_level(:persuasion).should == 4
  end

  it 'can use a skill on a creature' do
    creature = Creature.new

    Skills::Persuasion.any_instance.should_receive(:execute).with(
      skill_user, an_instance_of(Hash)
    )

    skill_user.use(:persuasion, target: creature)
  end
end

describe Creature do
  it_behaves_like 'a skill user'
end
