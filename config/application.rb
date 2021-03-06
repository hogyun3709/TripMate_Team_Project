require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TripMate
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.assets.paths << "#{Rails.root}/app/assets/media"
    config.assets.enabled = true



    # Settings in config/environments/* take precedence over those specified here.
    # Application conf\guration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
