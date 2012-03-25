class CreateAboutPages < ActiveRecord::Migration
  def change
    create_table :about_pages do |t|
      t.text :text
      t.string :title

      t.timestamps
    end
  end
end
