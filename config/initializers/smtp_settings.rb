ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default charset: "utf-8"
ActionMailer::Base.default_options = { from: ENV['GMAIL_EMAIL'] }
ActionMailer::Base.default_url_options = { host: ENV['APP_HOST'] }

ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 '587',
  domain:               'gmail.com',
  user_name:            ENV['GMAIL_EMAIL'],
  password:             ENV['GMAIL_PASSWORD'],
  enable_starttls_auto: true,
  authentication:       :plain
}
