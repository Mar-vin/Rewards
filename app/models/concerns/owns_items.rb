module OwnsItems
  def self.included(base)
    base.has_many :item_ownerships, foreign_key: :owner_id
  end

  def receive_items(items)
    items.each do |name, amount|
      create_ownership(name) unless item_ownerships.find_by(class_name: name)
      set_item_ownership_amount(name, amount_of(name) + amount)
    end
  end

  def remove_items(items)
    items.each do |name, amount|
      set_item_ownership_amount(name, amount_of(name) - amount)
      remove_ownership(name) if reload.amount_of(name) <= 0
    end
  end

  def items
    Hash[self.item_ownerships.map{ |ownership| [ownership.class_name.to_sym, ownership.amount] }]
  end

  def amount_of(name)
    items[name.to_sym] || 0
  end

  private

  def create_ownership(name)
    ItemOwnership.create!(owner_id: self.id, class_name: name)
  end

  def remove_ownership(name)
    item_ownerships.find_by(class_name: name).destroy
  end

  def set_item_ownership_amount(name, amount)
    if item_ownership = item_ownerships.find_by(class_name: name)
      item_ownership.update_attributes(amount: amount)
    end
  end
end
