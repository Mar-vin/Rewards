module OwnsItems
  def self.included(base)
    base.has_many :item_ownerships, foreign_key: :owner_id
  end

  def receive_items(items)
    items.each do |name, amount|
      ItemOwnership.create!(owner_id: self.id, class_name: name, amount: amount_of(name) + amount)
    end
  end

  def items
    Hash[self.item_ownerships.map{ |ownership| [ownership.class_name.to_sym, ownership.amount] }]
  end

  def amount_of(name)
    items[name.to_sym] || 0
  end
end
