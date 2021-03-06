class MailgunMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailgun_mailer.lipkit_notification.subject
  
  default from: 'obed.tandadjaja@covenant.edu'

  def lipkit_notification(lipkit)
  	@record = lipkit
    mail to: "obed.tandadjaja@covenant.edu", subject: "#{lipkit}"
  end

  def protein_notification(price)
  	@price = price
  	mail to: "obed.tandadjaja@covenant.edu", subject: "#{price}"
  end
end
