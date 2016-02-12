source 'https://rubygems.org'

ruby '2.3.0'

gem 'rails', '4.2.5.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'devise' # Auth
gem 'devise-i18n'
gem 'figaro' # Configuration
gem 'high_voltage' # Static pages
gem 'pg' # PostgreSQL
gem 'puma' # Web server
gem 'simple_form'
gem 'kaminari' # Pagination
gem 'carrierwave' # Files upload
gem 'carrierwave-bombshelter' # PNG bomb protect
gem 'mini_magick' # Image manipulations
gem 'active_model-errors_details' # Detailed errors
gem 'acts-as-taggable-on', '~> 3.4' # Tags
gem 'has_scope' # Map incoming controller parameters to named scopes
gem 'elasticsearch-rails' # ElasticSearch support
gem 'elasticsearch-model'
gem 'recaptcha', require: 'recaptcha/rails' # Captcha support

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

  # Deploy
  gem 'capistrano', '~> 3.0.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-rbenv'
  gem 'capistrano3-puma'

  # Continious integration
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rails', require: false
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'guard-brakeman'
  gem 'guard-livereload', '~> 2.4', require: false
end

group :development, :test do
  gem 'rspec-rails' # Test framework
  gem 'byebug' # Debugger
  gem 'spring' # App preloader
  gem 'fuubar' # RSpec progress bar formatter
  gem 'pry-rails' # Rails console
  gem 'pry-rescue' # Pry helper
  gem 'pry-bloodline' # Pry theme
  gem 'awesome_print' # Print colors
  gem 'railroady' # DB diagram
end

group :test do
  gem 'launchy' # Launch tests
  gem 'database_cleaner' # Clean test DB
  gem 'simplecov', require: false # Tests coverage
  gem 'shoulda-matchers', require: false # RSpec-compatible one-liners
  gem 'capybara' # Integration testing
  gem 'selenium-webdriver' # Automating website tests
end
