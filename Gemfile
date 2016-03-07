source 'https://rubygems.org'

ruby '2.3.0'

# Backend
gem 'rails', '4.2.5.1'
gem 'devise' # Authentication
gem 'devise-i18n' # Devise localization
gem 'devise-i18n-views' # Devise views localization
gem 'figaro' # Configuration
gem 'pg' # PostgreSQL
gem 'puma' # Web server
gem 'kaminari' # Pagination
gem 'carrierwave' # Files upload
gem 'carrierwave-bombshelter' # PNG bomb protect
gem 'mini_magick' # Image manipulations
gem 'active_model-errors_details' # Detailed errors
gem 'acts-as-taggable-on', '~> 3.4' # Tags
gem 'has_scope' # Map incoming controller parameters to named scopes
gem 'elasticsearch-rails' # ElasticSearch support
gem 'recaptcha', require: 'recaptcha/rails' # Captcha support
gem 'friendly_id', '~> 5.1.0' # Slugging permalinks
gem 'babosa' # Slug translations
gem 'rails-i18n', '~> 4.0.0' # Localization
gem 'pundit' # Authorization
gem 'active_model_serializers', '~> 0.10.0.rc4' # JSON generation

gem 'high_voltage' # Static pages
gem 'simple_form' # Form helpers
gem 'sidekiq' # Background jobs

group :development do
  gem 'web-console', '~> 2.0' # Web console
  gem 'better_errors' # Better errors page
  gem 'quiet_assets' # Less assets noise
  gem 'rb-fsevent', require: false # Cocoa API events
  gem 'rb-fchange', require: false
  gem 'spring-commands-rspec' # Tests preloader
  gem 'terminal-notifier-guard' # Notifications
  gem 'terminal-notifier' # Notifications
  gem 'binding_of_caller' # Retrieve the binding of a method's caller
  gem 'sandi_meter' # Clean code check
  gem 'letter_opener' # Preview letters
  gem 'bullet' # Prevent N+1 queries
  gem 'scss_lint', require: false # Check SCSS code style

  # Continious integration
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rails', require: false
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'guard-brakeman'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'guard-webpack'
end

group :development, :test do
  gem 'rspec-rails' # Test framework
  gem 'mutant-rspec' # Mutation testing
  gem 'byebug' # Debugger
  gem 'spring' # App preloader
  gem 'fuubar' # RSpec progress bar formatter
  gem 'pry-rails' # Rails console
  gem 'pry-rescue' # Pry helper
  gem 'pry-bloodline' # Pry theme
  gem 'pry-byebug' # Integration of debugger in Pry
  gem 'awesome_print' # Print colors
  gem 'railroady' # DB diagram
  gem 'factory_girl_rails' # Test factories
end

group :test do
  gem 'faker' # Fake data
  gem 'launchy' # Launch tests
  gem 'database_cleaner' # Clean test DB
  gem 'simplecov', require: false # Tests coverage
  gem 'shoulda-matchers', '~> 3.1' # RSpec-compatible one-liners
  gem 'capybara' # Integration testing
  gem 'selenium-webdriver' # Automating website tests
end
