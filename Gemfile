source 'https://rubygems.org'

gem 'rails', '4.2.2'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'devise'
gem 'aasm'
gem 'fog'
gem 'delayed_job_active_record'
gem 'pay2go'
gem 'letter_opener', group: :development
gem 'roadie', "2.4.3"
gem 'figaro'
gem "carrierwave"
gem "mini_magick"
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'puma'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
  gem 'capistrano-rails-console'
end


group :production do
   gem "pg"
   gem "rails_12factor"
end
