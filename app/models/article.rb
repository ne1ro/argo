# Article model
class Article < ActiveRecord::Base
  validates :title, presence: true, length: { in: 3..250 }
  validates :content, presence: true, length: { minimum: 5 }

  acts_as_taggable
end
