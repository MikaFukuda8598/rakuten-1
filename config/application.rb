require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Samazon
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

config.i18n.default_locale = :ja
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    # バリデーションエラーが発生したときに'field_with_errors'というclassを付加しない
   config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
  end
end
