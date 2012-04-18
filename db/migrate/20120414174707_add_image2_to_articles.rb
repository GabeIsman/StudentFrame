class AddImage2ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :image2_file_name, :string
    add_column :articles, :image2_content_type, :string
    add_column :articles, :image2_file_size, :integer
    add_column :articles, :image2_updated_at, :datetime
  end
end
