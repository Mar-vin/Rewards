class CreateCreature < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.integer :xp, default: 0
      t.timestamps
    end
  end
end
