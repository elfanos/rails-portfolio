class ContactsController < ApplicationController
  def new
    Rails.logger.info "-----------------new message---------------"
    @contact = Contact.new
    Rails.logger.info "wat is this #{@contact.email}"
    @contact.request = request
    if @contact.deliver
      Rails.logger.info "-------------valid mail?--------"
    else
        Rails.logger.info "------------not valid?------------"
      end
  end

  def create
    Rails.logger.info "-------in create?---------"
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      Rails.logger.info "-------------valid mail?--------"
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      Rails.logger.info "------------not valid?------------"
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
  def message_cast
    Rails.logger.info "-------in create?---------"
  end
end
