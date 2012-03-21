class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :text
      t.string :title
      t.integer :user_id
      t.string :category
      t.string :slug

      t.timestamps
    end
  end
end
