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

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  # config.action_mailer.smtp_settings = {
  #   address: "smtp.gmail.com",
  #   port: 587,
  #   domain: "medicalpersistancesystem.com",
  #   authentication: "plain",
  #   enable_starttls_auto: true,
  #   user_name: ENV["GMAIL_USERNAME"],
  #   password: ENV["GMAIL_PASSWORD"]
  # }
  
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #   :authentication => :plain,
  #   :address => "smtp.mailgun.org",
  #   :port => 587,
  #   :domain => "sandboxed275fb3850c475fac570f8421b31bec.mailgun.org",
  #   :user_name => "postmaster@sandboxed275fb3850c475fac570f8421b31bec.mailgun.org",
  #   :password => "df19226570f40f04fc15dfbd15dfc86f-f7910792-230dc6d2"
  # }
  
  # config.action_mailer.delivery_method = :mailgun
  # config.action_mailer.mailgun_settings = {
  #   api_key: '3ecf5c4800b261f3ea96af3ac0e70694-f7910792-dc447430',
  #   domain: 'sandboxed275fb3850c475fac570f8421b31bec.mailgun.org'
  # }
  # config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.default_options = { from: ENV['GMAIL_USERNAME'] }
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: ENV['GMAIL_USERNAME'],
    password: ENV['GMAIL_PASSWORD'],
    openssl_verify_mode: 'none'
  }
    #config.action_mailer.perform_caching = false
end
