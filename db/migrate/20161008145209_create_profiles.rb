class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :about
      t.text :experince
      t.text :contact
      t.text :clients

      t.timestamps null: false
    end
  end
end
