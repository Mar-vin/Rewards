require 'spec_helper'

describe Creature do
  it 'exposes its XPs' do
    Creature.new(xp: 12).xp.should == 12
  end

  it 'determines its level from the xp' do
    Creature.new(xp: 1601).level.should == 3
  end
end
