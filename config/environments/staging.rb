PomodoramaApi::Application.configure do
  config.action_controller.perform_caching  = true
  config.active_support.deprecation         = :notify
  config.assets.compile                     = false
  config.assets.compress                    = true
  config.assets.digest                      = true
  config.cache_classes                      = true
  config.cache_store                        = :dalli_store
  config.consider_all_requests_local        = false
  config.i18n.fallbacks                     = true
  config.log_level                          = :info
  config.serve_static_assets                = false
end
