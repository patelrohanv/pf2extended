class CreateSpellSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :spell_schools do |t|
      t.references :spell, null: false, foreign_key: true
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
