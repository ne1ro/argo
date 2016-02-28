# Set up blog-like entities (posts, articles, etc)
module Bloggable
  extend ActiveSupport::Concern

  included do
    extend FriendlyId

    validates :title, presence: true, length: { in: 3..200 }
    validates :content, presence: true, length: { minimum: 5 }

    acts_as_taggable

    friendly_id :title, use: :slugged
  end
end
