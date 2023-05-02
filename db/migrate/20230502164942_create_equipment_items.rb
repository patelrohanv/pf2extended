class CreateEquipmentItems < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment_items do |t|
      t.string :name
      t.text :description
      t.string :category
      t.decimal :weight
      t.decimal :price

      t.timestamps
    end
  end
end
