require 'coveralls'
Coveralls.wear_merged!('rails')

ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

Dir[Rails.root.join('spec/support/**/*.rb')].each { |filename| require filename }

RSpec.configure do |config|
  config.infer_base_class_for_anonymous_controllers = false
  config.order                                      = 'random'
end
