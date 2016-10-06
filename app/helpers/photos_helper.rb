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
        album = Album.find(photo.album_id)
        album_ordered = album.photos.order("CASE WHEN id = '#{photo.id}' THEN 1 ELSE 2 END, id")
        return album_ordered
      elsif modal == "interior"
        interior = Interior.find(photo.interior_id)
        return interior.photos.order("CASE WHEN id = '#{photo.id}' THEN 1 ELSE 2 END, id")
      elsif modal == "portrait"
        portrait = Portrait.find(photo.portrait_id)
        return portrait.photos.order("CASE WHEN id = '#{photo.id}' THEN 1 ELSE 2 END, id")
      else
        puts"haj"
         return "no relation"
      end
    end
  end
end
