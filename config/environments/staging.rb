OpenCongress::Application.configure do
  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  config.serve_static_assets = true

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
  
  Paperclip.options[:command_path] = "/usr/local/bin"
  
  ## removed when switched to rails 3.  still necessary?? 
  # if defined?(PhusionPassenger)
  #     PhusionPassenger.on_event(:starting_worker_process) do |forked|
  #         if forked
  #             # We're in smart spawning mode.
  #             Rails.cache.instance_variable_get(:@data).reset
  #         else
  #             # We're in conservative spawning mode. We don't need to do anything.
  #         end
  #     end
  # end
end
