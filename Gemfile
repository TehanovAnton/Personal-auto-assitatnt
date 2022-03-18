# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'elasticsearch-model', github: 'elastic/elasticsearch-rails', branch: 'main'
gem 'elasticsearch-rails', github: 'elastic/elasticsearch-rails', branch: 'main'
gem 'jquery-rails'
gem 'kaminari'
gem 'omniauth-google-oauth2', '~> 1.0'
gem 'omniauth-rails_csrf_protection', '~> 1.0'
gem 'pundit', '~> 2.1', '>= 2.1.1'
gem 'sidekiq', '~> 6.3', '>= 6.3.1'
gem 'sidekiq-cron'
gem 'simple_form', '~> 5.1'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.19'
  gem 'figaro', '~> 1.2'
  gem 'pry', '~> 0.14.1'
  gem 'pry-nav'
  gem 'pry-remote'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.1'
  gem 'rubocop-rails', require: false
  gem 'shoulda-matchers', '~> 5.1'
end

group :test do
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
