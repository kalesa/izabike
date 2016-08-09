require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module IzaBike
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.action_mailer.preview_path = "#{Rails.root}/test/mailers/previews"
    config.cache_store = :redis_store, 'redis://localhost:6379/0/cache'
  end
end
ActiveSupport.halt_callback_chains_on_return_false = false
