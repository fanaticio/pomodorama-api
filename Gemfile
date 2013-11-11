source  'https://rubygems.org'

gem 'rails',                '3.2.15'

group :assets do
  gem 'sass-rails',         '~> 3.2.3'
  gem 'coffee-rails',       '~> 3.2.1'
  gem 'uglifier',           '>= 1.0.3'
end

group :development do
  gem 'better_errors',      '~> 1.0.1'
  gem 'binding_of_caller',  '~> 0.7.2'
  gem 'brakeman',           '~> 2.2.0', require: false
  gem 'jazz_hands',         '~> 0.5.2'
  gem 'quiet_assets',       '~> 1.0.2'
end

group :development, :test do
  gem 'dotenv-rails',       '~> 0.9.0'
end

group :test do
  gem 'rspec-rails',        '~> 2.14.0'
  gem 'cucumber-api-steps',
    git: 'https://github.com/jayzes/cucumber-api-steps.git',
    ref: '7ab2dada76195d029f58eb9e1d5487ce14d1dc29',
    require: false
  gem 'cucumber-rails',     '~> 1.4.0'
  gem 'database_cleaner',   '~> 1.1.1'
  gem 'vcr',                '~> 2.5.0'
  gem 'webmock',            '~> 1.13.0'
end

gem 'bson_ext',             '~> 1.9.2'
gem 'dalli',                '~> 2.6.4'
gem 'grape',                '~> 0.6.1'
gem 'jquery-rails',         '~> 3.0.4'
gem 'mongoid',              '~> 3.1.5'
gem 'rack-cors',            '~> 0.2.8'
gem 'slim',                 '~> 2.0.2'
gem 'unicorn',              '~> 4.7.0'
