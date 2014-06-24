# Initialize your Mailgun object:
require 'mailgun'
class Email
	Mailgun.configure do |config|
	  config.api_key = 'key-5i66wvmyrqf522kvqwrs245hf4vr8v34'
	  config.domain  = 'sandbox73556029f036414e836768aa29e0ecf6.mailgun.org'
	end

	@mailgun = Mailgun(:api_key => 'key-5i66wvmyrqf522kvqwrs245hf4vr8v34')

	parameters = {
  :to => "brigettenoh@gmail.com",
  :subject => "!!!!!",
  :text => "Hi! I am emailing you through Ruby! wohoo!!we just learned how to do this so i dont think you can respond though but look how cool this is!!",
  :from => "postmaster@sandbox73556029f036414e836768aa29e0ecf6.mailgun.org"
}	
	@mailgun.messages.send_email(parameters)
end
