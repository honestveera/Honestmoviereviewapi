require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HonestMovieReview
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.sass.preferred_syntax = :sass
    config.generators do |g|
      g.template_engine :haml
      g.stylesheet_engine :sass
      g.test_framework :rspec, :fixture => true, :views => false
    end
  end
end
