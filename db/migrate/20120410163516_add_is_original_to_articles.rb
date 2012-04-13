class AddIsOriginalToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :is_original, :boolean
  end
end
