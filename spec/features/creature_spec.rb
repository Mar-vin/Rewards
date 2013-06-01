require 'spec_helper'

describe 'viewing a creature' do
  let(:creature) { Creature.make!(xp: 123) }
  it 'shows its XP' do
    visit creature_path(creature)
    page.should have_content 'XP: 123'
    page.should have_content 'Level: 0'
  end
end
