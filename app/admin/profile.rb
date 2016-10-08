ActiveAdmin.register Profile do
  permit_params :name, :about, :experince, :contact, :clients, :profile_picture
  index do
    column :name
    column :about
    column :experince
    column :contact
    column :clients
    column :profile_picture
    actions
  end

end
