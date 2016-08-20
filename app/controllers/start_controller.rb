class StartController < ApplicationController
  def index
    # @potrait_photo = Photo.where(picture: "frontbild.jpg");
    # @cover_photo = Photo.where(picture: "frontcoover.jpg");
    @photo = Photo.last
  end
end
