class AddPortraitIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :portrait_id, :integer
  end
end
