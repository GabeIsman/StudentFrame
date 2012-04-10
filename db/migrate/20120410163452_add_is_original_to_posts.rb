class AddIsOriginalToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :is_original, :boolean
  end
end
