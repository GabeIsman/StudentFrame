class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :text
      t.string :title
      t.timestamps
    end
  end
end
