class ProfilesController < ApplicationController
  def index
    @profile = Profile.all
  end
  def show
    @profile = Profile.find(params[:id])
    #@album = Album.find(@profile.album_id)
  end
  def new
    @profile = Profile.new
  end
  def create
    @profile = Profile.new(profile_params)
    puts "aa", @profile
    if @profile.save
      redirect_to @profile
    else
      render 'new'
    end
  end

  private
    def profile_params
       params.require(:profile).permit(:name, :about, :experince, :contact, :clients, :profile_picture)
    end
end
