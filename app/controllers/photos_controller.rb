class PhotosController < ApplicationController
  def index
    @photo = Photo.all
  end
  def show
    @photo = Photo.find(params[:id])
  end
  def new
    @photo = Photo.new
  end
  def create
    @photo = Photo.new(photo_params)
    puts "aa", @photo
    if @photo.save
      redirect_to @photo
    else
      render 'new'
    end
  end

  private
    def photo_params
       params.require(:photo).permit(:picture, :album_id)
    end
end
