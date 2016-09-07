require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RehabID
  class Application < Rails::Application
    config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
 	:address              => "smtp.gmail.com",
	 :port                 => 587,
	 :user_name            => ENV['gmail_username'], #retrieved from config/application.yml
	 :password             => ENV['gmail_password'], #retrieved from config/application.yml
	 :authentication       => "plain",
	:enable_starttls_auto => true
	}
  end
end
