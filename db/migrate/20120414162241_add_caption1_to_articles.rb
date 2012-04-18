class AddCaption1ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :caption1, :text
  end
end
