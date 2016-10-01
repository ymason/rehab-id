require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RehabID
  class Application < Rails::Application
  	config.active_record.time_zone_aware_types = [:datetime]
    config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
 	:address              => "smtp.1and1.com",
	 :port                 => 25,
	 :user_name            => ENV['email_username'], #retrieved from config/application.yml
	 :password             => ENV['email_password'], #retrieved from config/application.yml
	 :authentication       => "plain",
	:enable_starttls_auto => true
	}
  end
end
