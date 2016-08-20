class InteriorsController < ApplicationController

  def index
    @interiors = Interior.all
    @photos = @interiors.first.photos.all
  end
  def show
    @interior = Interior.find(params[:id])
    @photos = @interior.photos.all
    puts "@photos", @photos
  end
  def new
    @interior = Interior.new
  end
  def create
    @interior = Interior.new(interior_params)
    puts "aa", @interior
    if @interior.save
      redirect_to @interior
    else
      render 'new'
    end
  end
  private
    def interior_params
      params.require(:interior).premit(:name)
    end
end
