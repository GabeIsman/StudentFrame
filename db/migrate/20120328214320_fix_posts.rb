class FixPosts < ActiveRecord::Migration
  def change
    add_column :posts, :blog_id, :integer
    remove_column :posts, :user_id
  end
end
