ActiveAdmin.register Article do
  permit_params :name, :description, :paper
  index do
    column :document
    column :name
    column :paper
    actions
  end
  form html: { multipart: true } do |f|
    f.inputs "Articles" do
      # ...
      f.input :name
      f.input :description
      f.input :paper, as: :file
    end
    actions
  end
end
