require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'

gem 'rails', '3.2.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'guard', '>= 0.6.2', :group => :development  # need newline here!
case HOST_OS
  when /darwin/i
    gem 'rb-fsevent', :group => :development
    gem 'growl', :group => :development
  when /linux/i
    gem 'libnotify', :group => :development
    gem 'rb-inotify', :group => :development
  when /mswin|windows/i
    gem 'rb-fchange', :group => :development
    gem 'win32console', :group => :development
    gem 'rb-notifu', :group => :development
end

gem 'guard-bundler', '>= 0.1.3', :group => :development
gem 'guard-rails', '>= 0.0.3', :group => :development
gem 'guard-livereload', '>= 0.3.0', :group => :development
gem 'faker', :group => :development
gem 'pry-rails', :group => :development
gem 'awesome_print', :group => :development

gem 'bson_ext', '>= 1.5.2'
gem 'mongoid', '>= 2.4.6'
gem 'omniauth', '>= 1.0.2'
gem 'omniauth-facebook'
gem 'bootstrap-sass', '>= 2.0.1'
gem 'app_box'
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
gem 'mini_magick'
gem 'kaminari'
gem 'simple_form'