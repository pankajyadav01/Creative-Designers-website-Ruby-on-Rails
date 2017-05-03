class ContactusController < ApplicationController
	def create
		notify_me
	end

	private

	def notify_me
		@a=Contactus.new(params[:name,:email,:msg])
		ContactMailer.contact_email(@a).deliver_now
	end

end
