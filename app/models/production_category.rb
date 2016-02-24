# Production category model
class ProductionCategory < ActiveRecord::Base
  # has_many :productions
  validates :name, presence: true, length: { minimum: 5 }
  validates :description, length: { in: 5..500 }
end
