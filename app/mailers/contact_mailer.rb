class ContactMailer < ApplicationMailer
require 'sendgrid-ruby'
include SendGrid
 # send a signup email to the user, pass in the user object that   contains the user's email address

def contact_me(mail)
  from = Email.new(email: mail.email)
  to = Email.new(email: 'julia@grufving.com')
  subject = "From my site"
  content = Content.new(type: 'text/plain', value: mail.message)
  mail = Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers
end
 def send_signup_email(user)
   @user = user
   mail( :to => @user.email,
   :subject => 'Thanks for signing up for our amazing app' )
 end
end
