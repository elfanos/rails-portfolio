class ContactsController < ApplicationController

  def index
    @contact = Contact.new
    render :new
  end

  def new
    logger.info "This is from info i new"
    @contact = Contact.new
    logger.info "{#{@contact.name}}"

  end
  def create
    logger.info "This is from info"
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      logger.info "This is from info wadawd elese"
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
