class UsermailerMailer < ApplicationMailer
	def welcome_email( )
     	mail(to: user.email, from:pankaj15csu145@ncuindia.edu  subject: 'Welcome to CREATIVES')
	end
end
