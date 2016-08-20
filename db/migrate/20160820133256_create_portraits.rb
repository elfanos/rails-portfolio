class CreatePortraits < ActiveRecord::Migration
  def change
    create_table :portraits do |t|

      t.timestamps null: false
    end
  end
end
