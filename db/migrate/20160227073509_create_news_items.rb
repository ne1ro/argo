# Create news items table
class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.text :content, null: false
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
