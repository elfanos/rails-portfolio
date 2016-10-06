class AddPaperToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :paper, :string
  end
end
