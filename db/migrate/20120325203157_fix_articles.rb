class FixArticles < ActiveRecord::Migration
  def change
    add_column :articles, :text, :text
    add_column :articles, :title, :string
    add_column :articles, :byline, :string
    add_column :articles, :agenda_id, :integer
    add_column :articles, :user_id, :integer
    add_column :articles, :tpye, :string
  end
end
