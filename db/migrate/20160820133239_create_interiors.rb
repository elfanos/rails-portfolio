class CreateInteriors < ActiveRecord::Migration
  def change
    create_table :interiors do |t|

      t.timestamps null: false
    end
  end
end
