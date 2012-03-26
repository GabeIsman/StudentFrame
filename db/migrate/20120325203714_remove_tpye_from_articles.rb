class RemoveTpyeFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :tpye
  end
end
