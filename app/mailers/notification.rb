class Notification < ApplicationMailer
  def notify(email, subject, content)
    @content = content
    mail(to: email, subject: subject)
  end
end
