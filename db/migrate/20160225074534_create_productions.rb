# Create productions table
class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.text :structure
      t.text :properties
      t.text :use
      t.text :contraindications
      t.string :name, null: false
      t.text :context
      t.text :packaging
      t.float :price, null: false, default: 0
      t.string :code
      t.references :production_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
