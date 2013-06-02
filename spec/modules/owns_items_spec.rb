require 'spec_helper'

shared_examples_for 'an item owner' do
  let(:item_owner) { described_class.create! }

  it 'recieves items' do
    item_owner.receive_items(food: 2)
    item_owner.reload.items.should == { food: 2 }

    item_owner.receive_items(food: 2)
    item_owner.reload.items.should == { food: 4 }
  end
end

describe Creature do
  it_behaves_like 'an item owner'
end
