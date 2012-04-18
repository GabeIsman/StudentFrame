class AddImage1ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :image1_file_name, :string
    add_column :articles, :image1_content_type, :string
    add_column :articles, :image1_file_size, :integer
    add_column :articles, :image1_updated_at, :datetime
  end
end
