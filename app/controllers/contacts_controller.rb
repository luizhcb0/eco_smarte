class ContactsController < ApplicationController
  include StrongParamsHolder
  
  def index
    @contact = Contact.new
    @message = ContactMessage.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    @message = ContactMessage.create(contact_params)
    @contact.request = request
    if @contact.deliver && @message.save
      flash[:success] = "Thank you for your message. We will contact you soon!"
      redirect_to new_contact_path
    else
      flash[:error] = "Cannot send message."
      render :new
    end
  end
end
