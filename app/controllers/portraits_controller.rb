class PortraitsController < ApplicationController
  def index
    @portraits = Portrait.all
    @photos = @portraits.first.photos.all
  end
  def show
    @portrait = Portrait.find(params[:id])
    @photos = @portrait.photos.all
    puts "@photos", @photos
  end
  def new
    @portrait = Portrait.new
  end
  def create
    @portrait = Portrait.new(portrait_params)
    puts "aa", @portrait
    if @portrait.save
      redirect_to @portrait
    else
      render 'new'
    end
  end
  private
    def portrait_params
      params.require(:portrait).premit(:name)
    end
end
