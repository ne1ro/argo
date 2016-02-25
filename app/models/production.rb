# Production model
class Production < ActiveRecord::Base
  belongs_to :production_category

  validates :production_category, presence: true
  validates :name, presence: true, length: { minimum: 5 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :code, length: { minimum: 3 }
end
