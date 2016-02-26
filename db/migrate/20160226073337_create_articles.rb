# Create articles table
class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :content, null: false
      t.text :description
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
