# Create production categories
class CreateProductionCategories < ActiveRecord::Migration
  def change
    create_table :production_categories do |t|
      t.string :name, null: false
      t.text :context
      t.text :description

      t.timestamps null: false
    end
  end
end
