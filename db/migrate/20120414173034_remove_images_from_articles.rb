class RemoveImagesFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :image_file_name
    remove_column :articles, :image_content_type
    remove_column :articles, :image_file_size
    remove_column :articles, :image_updated_at
  end
end
