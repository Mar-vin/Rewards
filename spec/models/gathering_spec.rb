require 'spec_helper'

describe Skills::Gathering do
  it 'gives a gathering entity food' do
    creature = Creature.new

    creature.should_receive(:receive_items).with(food: 3)

    Skills::Gathering.new.execute(creature)
  end
end
