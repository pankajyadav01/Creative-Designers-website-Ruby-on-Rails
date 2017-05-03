class ContactMailer < ApplicationMailer
	default from: "pankaj15csu145@ncuindia.edu"
	def contact_email(object)
		@object=object
     	mail to: "pankaj15csu145@ncuindia.edu",from: @object.email , subject: "A QUIERY"
	end
end