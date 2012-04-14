class AddAttachmentImageToFrontPage < ActiveRecord::Migration
  def self.up
    add_column :front_pages, :image_file_name, :string
    add_column :front_pages, :image_content_type, :string
    add_column :front_pages, :image_file_size, :integer
    add_column :front_pages, :image_updated_at, :datetime
  end

  def self.down
    remove_column :front_pages, :image_file_name
    remove_column :front_pages, :image_content_type
    remove_column :front_pages, :image_file_size
    remove_column :front_pages, :image_updated_at
  end
end
