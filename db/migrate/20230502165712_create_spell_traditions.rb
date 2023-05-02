class CreateSpellTraditions < ActiveRecord::Migration[7.0]
  def change
    create_table :spell_traditions do |t|
      t.references :spell, null: false, foreign_key: true
      t.references :tradition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
