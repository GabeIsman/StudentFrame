class AddBylineToPost < ActiveRecord::Migration
  def change
    add_column :posts, :byline, :string
  end
end
