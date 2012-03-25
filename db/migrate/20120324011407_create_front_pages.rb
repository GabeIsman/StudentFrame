class CreateFrontPages < ActiveRecord::Migration
  def change
    create_table :front_pages do |t|
      t.text :text
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end
