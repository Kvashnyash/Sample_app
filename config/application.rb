require File.expand_path('../boot', __FILE__)

require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application  
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.active_record.raise_in_transactional_callbacks = true
    I18n.enforce_available_locales = true
  end
end
