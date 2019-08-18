require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoList
  class Application < Rails::Application
    config.i18n.default_locale = :'pt-BR'

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.i18n.default_locale             = 'pt-BR'

    config.time_zone                       = 'America/Sao_Paulo'
    config.active_record.default_timezone  = :utc
  end
end
