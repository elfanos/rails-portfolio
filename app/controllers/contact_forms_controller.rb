class ContactFormsController < ApplicationController
  def index
    redirect_to new_contact_form_path
  end
  def new
      @contact_form = ContactForm.new
  end
  def create
    @contact_form = ContactForm.new(contact_form_params)
    if @contact_form.valid?
      ContactMailer.contact_me(@contact_form).deliver
      redirect_to new_contact_form_url, notice: "Message received, thanks!"
    else
      render :new
    end
  end
  private
  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :message, :submit)
  end
end
