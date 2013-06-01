require 'spec_helper'

shared_examples_for 'an experience cumulating entity'  do
  let(:experience_cumulating_entity) { described_class.make! }

  it 'determines its level from the xp' do
    experience_cumulating_entity.receive_xp(1601)

    experience_cumulating_entity.xp.should    == 1601
    experience_cumulating_entity.level.should == 3
  end
end

describe Creature do
  it_behaves_like 'an experience cumulating entity'
end
