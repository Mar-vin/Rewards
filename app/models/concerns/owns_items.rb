module OwnsItems
  def receive_items(items)
    items.each do |name, amount|
      ItemOwnership.create!(owner_id: self.id, class_name: name, amount: amount)
    end
  end

  def items
    Hash[self.item_ownerships.map{ |ownership| [ownership.class_name.to_sym, ownership.amount] }]
  end
end
