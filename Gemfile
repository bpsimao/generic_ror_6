# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'awesome_print'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'foreman'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.0.rc1'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'better_errors'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'binding_of_caller'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
end
