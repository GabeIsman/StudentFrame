class AddCaption0ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :caption0, :text
  end
end
