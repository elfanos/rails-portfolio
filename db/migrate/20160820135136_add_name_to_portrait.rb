class AddNameToPortrait < ActiveRecord::Migration
  def change
    add_column :portraits, :name, :string
  end
end
