source 'https://rubygems.org'
ruby '2.4.0'

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'lograge'
gem 'pg', '~> 0.21'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
gem 'rails_admin', '~> 1.2'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mri mingw x64_mingw jruby]
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  gem 'ffaker'
  gem 'rspec-rails'
  gem 'rubocop', require: false
end

group :development do
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop'
  install_if -> { RUBY_PLATFORM =~ /linux/ } { gem 'libnotify' }
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  install_if -> { RUBY_PLATFORM =~ /darwin/ } { gem 'terminal-notifier-guard', '~> 1.6.1' }
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.0'
  gem 'shoulda-matchers', '~> 3.1', require: false
  gem 'simplecov'
end
