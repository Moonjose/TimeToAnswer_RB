source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.10'

gem 'rails', '~> 5.2.8', '>= 5.2.8.1'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'rails-i18n', '~> 5.1'
gem 'faker'
gem 'kaminari'
gem 'kaminari-i18n'
gem 'cocoon'
gem 'prawn-rails'


group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'awesome_print'
  gem 'tty-spinner'
  gem 'rails_db', '2.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end


gem 'pg', '~> 1.2', '>= 1.2.3', group: :production
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]