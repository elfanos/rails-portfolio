class AddNameToInterior < ActiveRecord::Migration
  def change
    add_column :interiors, :name, :string
  end
end
