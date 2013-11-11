PomodoramaApi::Application.configure do
  config.action_controller.perform_caching      = false
  config.action_dispatch.best_standards_support = :builtin
  config.action_mailer.raise_delivery_errors    = false
  config.active_support.deprecation             = :log
  config.assets.compress                        = false
  config.assets.debug                           = true
  config.cache_classes                          = false
  config.cache_store                            = :dalli_store
  config.consider_all_requests_local            = true
  config.whiny_nils                             = true
end
