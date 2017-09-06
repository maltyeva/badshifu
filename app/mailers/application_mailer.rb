class ApplicationMailer < ActionMailer::Base
  default from: 'maria@drunkdinnerparty.com'
  default to: 'maria@drunkdinnerparty.com'
  layout 'mailer'
end
