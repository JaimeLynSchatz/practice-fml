Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Configure AWS for picture management with Paperclip gem
  config.paperclip_defaults = {
    :storage => :s3#,
#    :s3_credentials => {
#      :bucket => ENV['S3_BUCKET_NAME'] # TODO set this up
#      :access_key_id => ENV['AWS_ACCESS_KEY_ID'] # TODO this, too
#      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'] # TODO this, too
#    }
  }

#   #
#   #
#   # from: https://devcenter.heroku.com/articles/paperclip-s3
#   Additionally, we’ll need to the set the AWS configuration variables on the Heroku application.
# $ heroku config:set S3_BUCKET_NAME=your_bucket_name
# $ heroku config:set AWS_ACCESS_KEY_ID=your_access_key_id
# $ heroku config:set AWS_SECRET_ACCESS_KEY=your_secret_access_key
#
#
#
#


    # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Confire default urls for use with Devise gem
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
