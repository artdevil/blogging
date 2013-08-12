source 'https://rubygems.org'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'devise'
gem 'simple_form'
gem "twitter-bootstrap-rails"
gem 'friendly_id'
gem 'omniauth-facebook', "1.4.0"
gem 'fb_graph'
gem 'omniauth-twitter'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'quiet_assets', :group => :development
group :test, :development do
  #gem "rails_best_practices"
  #gem "jasmine"
  # metric
  gem "metrical"
  
  gem "rspec-rails", "~> 2.13"
  # gem "mongoid-rspec"
  #gem "mocha"
  
  gem 'simplecov', :require => false
  #gem 'jasminerice'
  #gem 'guard-jasmine'
  gem "database_cleaner"
  
  gem "faker"
  gem "launchy"
  
  gem "email_spec", ">= 1.2.1", :group => :test
  gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
  gem "guard-cucumber"
  
  #gem "parallel_tests"
  #gem "zeus-parallel_tests"
end

group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
  gem "guard-bundler"
  gem "rb-fsevent"
  gem "zeus"
  gem 'selenium-webdriver'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
