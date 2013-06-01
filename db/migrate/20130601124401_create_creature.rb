class CreateCreature < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.integer :xp
      t.timestamps
    end
  end
end
