ActiveAdmin.register Photo do
  permit_params :picture, :album_id, :interior_id, :portrait_id
  index do
    column :picture
    column :created_at
    column :album_id
    column :interior_id
    column :portrait_id
    actions
  end

end
