source 'http://rubygems.org'

gem 'spree_core', :path => '../spree/core'
#gem 'spree_digital', :path => 'spree_digital'
gem "sqlite3"

group :test do
  gem 'rspec-rails', '= 2.6.1'
  gem 'factory_girl', '= 2.1.2'
  gem 'factory_girl_rails', '= 1.2.0'
  gem 'rcov'
  gem 'shoulda'
  gem 'faker'
  if RUBY_VERSION < "1.9"
    gem "ruby-debug"
  else
    gem "ruby-debug19"
  end
end

group :cucumber do
  gem 'cucumber-rails'
  gem 'database_cleaner', '= 0.6.7'
  gem 'nokogiri'
  gem 'capybara', '1.0.1'
  gem 'factory_girl', '= 2.1.2'
  gem 'factory_girl_rails', '= 1.2.0'
  gem 'faker'
  gem 'launchy'
  if RUBY_VERSION < "1.9"
    gem "ruby-debug"
  else
    gem "ruby-debug19"
  end
end

gemspec
