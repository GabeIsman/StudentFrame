class AddCaption2ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :caption2, :text
  end
end
