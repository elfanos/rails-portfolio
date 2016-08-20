ActiveAdmin.register Interior do
  permit_params :name, photo_attributes_attributes: [:id,:picture,:_destroy => true]
  index do
   column :name
   column :created_at
   actions
  end

  form(:html => { :multipart => true }) do |f|
   f.inputs "Interior" do
     f.input :name
   end
   actions
  end

end
