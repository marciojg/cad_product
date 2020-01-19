# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails'
gem 'pg'
gem 'puma'
gem 'webpacker'
gem 'simple_form'
gem 'turbolinks'
gem 'bootsnap', require: false

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails', '~> 4.0.0.beta3' # This is necessary according to this issue https://github.com/rspec/rspec-rails/issues/2086
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
