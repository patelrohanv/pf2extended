class CreateSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.text :description
      t.integer :level
      t.string :casting_time
      t.string :range
      t.string :duration
      t.string :components

      t.timestamps
    end
  end
end
