class CreateCreature < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.integer :xp, default: 0

      t.integer :charisma, default: 0
      t.integer :constitution, default: 0
      t.integer :dexterity, default: 0
      t.integer :intelligence, default: 0
      t.integer :strength, default: 0
      t.integer :wisdom, default: 0

      t.timestamps
    end
  end
end
