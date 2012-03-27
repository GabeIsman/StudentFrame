class AddOrderToAboutPages < ActiveRecord::Migration
  def change
    add_column :about_pages, :order, :integer
  end
end
