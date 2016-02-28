require 'babosa'

FriendlyId.defaults do |config|
  config.base = :title
  config.use :slugged

  config.use Module.new {
    def normalize_friendly_id(text)
      text.to_slug.normalize! transliterations: %i(russian latin)
    end
  }
end
