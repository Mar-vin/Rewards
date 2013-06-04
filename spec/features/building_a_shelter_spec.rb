require 'spec_helper'

describe 'A creature building a shelter' do
  let!(:creature)   { Creature.create! }
  let(:shelter_css) { ['#present-buildings', text: 'Shelter'] }

  before do
    visit creature_path(creature)
  end

  context 'with sufficient ressources' do
    before do
      creature.receive_items(wood: 3)
    end

    it 'removes ressources from the creature' do
      expect{
        click_button 'create shelter'
      }.to change{ creature.reload.amount_of(:wood) }.by(-3)
    end

    it 'establishes a shelter' do
      click_button 'create shelter'
      page.should have_css *shelter_css
    end
  end

  context 'without sufficient ressources' do
    before do
      creature.receive_items(wood: 2)
    end

    it 'does not remove ressources from the creature' do
      expect{
        click_button 'create shelter'
      }.to change{ creature.reload.amount_of(:wood) }.by(0)
    end

    it 'establishes a shelter' do
      click_button 'create shelter'
      page.should_not have_css *shelter_css
    end
  end
end
