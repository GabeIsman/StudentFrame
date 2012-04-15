class AddImage0ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :image0_file_name, :string
    add_column :articles, :image0_content_type, :string
    add_column :articles, :image0_file_size, :integer
    add_column :articles, :image0_updated_at, :datetime
  end
end
