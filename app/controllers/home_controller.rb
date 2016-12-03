class HomeController < ApplicationController
  def index
  end

  def notify
    emails = params[:emails].split(',')
    @subject = params[:subject]
    @content = params[:content]
    emails.each do |email|
      Notification.notify(email.strip, @subject, @content).deliver_now
    end
    redirect_to root_path
  end
end
