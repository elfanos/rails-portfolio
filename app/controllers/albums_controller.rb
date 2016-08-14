class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end
  def show
    @album = Album.find(params[:id])
    @photos = @album.photos.all
    puts "@photos", @photos
  end
  def new
    @album = Album.new
  end
  def create
    @album = Album.new(album_params)
    puts "aa", @album
    if @album.save
      redirect_to @album
    else
      render 'new'
    end
  end
  private
    def album_params
      params.require(:album).premit(:name)
    end
end
