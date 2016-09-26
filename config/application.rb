require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Standupper
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja

    config.generators do |g|
      g.javascript false
      g.stylesheets false
      g.helper false
      g.template_engine = :slim
      g.test_framework :rspec,
        fixture: true,
        view_specs: false,
        helper_specs: false,
        controller_specs: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
