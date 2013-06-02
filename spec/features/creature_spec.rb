require 'spec_helper'

describe 'viewing a creature' do
  let(:creature) { Creature.make!(xp: 123) }
  it 'shows its XP' do
    visit creature_path(creature)
    page.should have_content 'XP: 123'
    page.should have_content 'Level: 0'
  end

  describe "using a creature's gathering skill" do
    it 'increases the food in its item list' do
      visit creature_path(creature)

      click_button 'gather food'
      page.should have_content 'Items: {:food=>3}'
    end
  end

  describe "using a creature's woodcutting skill" do
    it 'increases the food in its item list' do
      visit creature_path(creature)

      click_button 'gather wood'
      page.should have_content 'Items: {:wood=>3}'
    end
  end
end
