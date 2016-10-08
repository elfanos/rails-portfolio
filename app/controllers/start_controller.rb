class StartController < ApplicationController
  def index
    # @potrait_photo = Photo.where(picture: "frontbild.jpg");
    # @cover_photo = Photo.where(picture: "frontcoover.jpg");
    @profile = Profile.last
    if @profile == nil
      
    end
  end
end
