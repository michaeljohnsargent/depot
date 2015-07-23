class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'
  def receive(message)

  end
end
