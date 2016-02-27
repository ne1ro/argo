# News item model
class NewsItem < ActiveRecord::Base
  validates :title, presence: true, length: { in: 3..100 }
  validates :content, presence: true, length: { minimum: 5 }
end
