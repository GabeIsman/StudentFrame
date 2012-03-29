class AddKindToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :kind, :string
  end
end
