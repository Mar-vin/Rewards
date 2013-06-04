require 'spec_helper'

shared_examples_for 'an item owner' do
  let(:item_owner) { described_class.create! }

  it 'can recieve items' do
    item_owner.receive_items(food: 2)
    item_owner.reload.items.should == { food: 2 }

    item_owner.receive_items(food: 2)
    item_owner.reload.items.should == { food: 4 }
  end

  context 'that has items' do
    it 'can get items removed' do
      item_owner.receive_items(food: 6)
      item_owner.reload.remove_items(food: 3)
      item_owner.reload.items.should == { food: 3}
    end
  end

  context 'it does not have enough items' do
    it 'removes all present items' do
      item_owner.receive_items(food: 2)
      item_owner.reload.remove_items(food: 5)
      item_owner.reload.items.should == { food: 0}
    end
  end
end

describe Creature do
  it_behaves_like 'an item owner'
end
