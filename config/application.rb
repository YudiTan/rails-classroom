require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
module Onlineclassroom
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.serve_static_assets = true
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.paperclip_defaults = {
      storage: :s3,
      s3_region: ENV["AWS_S3_REGION"],
      s3_credentials: {
        s3_host_name: ENV["AWS_S3_HOST_NAME"],
        bucket: ENV["AWS_S3_BUCKET"],
        access_key_id: ENV["AWS_ACCESS_KEY_ID"],
        secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
        }
      } 
  end
end
