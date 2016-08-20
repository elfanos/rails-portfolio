class AddInteriorIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :interior_id, :integer
  end
end
