class AddImagesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :caption0, :text
    add_column :posts, :image0_file_name, :string
    add_column :posts, :image0_content_type, :string
    add_column :posts, :image0_file_size, :integer
    add_column :posts, :image0_updated_at, :datetime
    add_column :posts, :caption1, :text
    add_column :posts, :image1_file_name, :string
    add_column :posts, :image1_content_type, :string
    add_column :posts, :image1_file_size, :integer
    add_column :posts, :image1_updated_at, :datetime
    add_column :posts, :caption2, :text
    add_column :posts, :image2_file_name, :string
    add_column :posts, :image2_content_type, :string
    add_column :posts, :image2_file_size, :integer
    add_column :posts, :image2_updated_at, :datetime
  end
end
