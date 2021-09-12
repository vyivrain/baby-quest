require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BabyQuest
  class Application < Rails::Application
    config.load_defaults 6.1
    config.action_controller.include_all_helpers = true
  end
end
