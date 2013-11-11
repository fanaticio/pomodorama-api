require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'active_resource/railtie'
require 'sprockets/railtie'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module PomodoramaApi
  class Application < Rails::Application
    config.active_support.escape_html_entities_in_json  = true
    config.assets.enabled                               = true
    config.assets.version                               = '1.0'
    config.encoding                                     = "utf-8"
    config.filter_parameters                            += [:password]
    config.i18n.default_locale                          = :en
    config.time_zone                                    = 'Europe/Paris'
  end
end
