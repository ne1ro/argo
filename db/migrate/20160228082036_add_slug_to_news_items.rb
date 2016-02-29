# Add slug field to news items
class AddSlugToNewsItems < ActiveRecord::Migration
  def change
    add_column :news_items, :slug, :string
    add_index :news_items, :slug, unique: true
  end
end