class CreateLocation < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :x, null: false
      t.integer :y, null: false
      t.integer :z, null: false
      t.string :type, null: false
      t.string :name

      t.timestamps
    end
    add_index(:locations, :type)
  end
end
