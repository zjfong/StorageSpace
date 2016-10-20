class ApplicationMailer < ActionMailer::Base
  default from: 'storagespacesample@gmail.com'
  layout 'mailer'

  def default_url_options
    if Rails.env.production?
      {:host => "localhost:3000"}
    else
      {:host => "localhost:3000"}
    end
  end
end

class WelcomeMailer < ApplicationMailer
end
