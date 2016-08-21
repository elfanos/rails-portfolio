module PhotosHelper
  class ClassMethods
    def self.which_tpye_of_album(photo)
       if !photo.album.nil?
         return "album"
       elsif !photo.interior.nil?
         return "interior"
       elsif !photo.portrait.nil?
         return "portrait"
       else
          return "no relation"
       end
    end
    def self.get_ablum(modal, photo)
      if modal == "album"
        puts"haj"
        return Album.find(photo.album_id)
      elsif modal == "interior"
        return Interior.find(photo.interior_id)
      elsif modal == "portrait"
        return Portrait.find(photo.portrait_id)
      else
        puts"haj"
         return "no relation"
      end
    end
  end
end
