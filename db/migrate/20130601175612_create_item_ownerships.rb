class CreateItemOwnerships < ActiveRecord::Migration
  def change
    create_table :item_ownerships do |t|
      t.integer :owner_id, null: false
      t.string :class_name, null: false
      t.integer :amount, default: 0

      t.timestamps
    end
  end
end
