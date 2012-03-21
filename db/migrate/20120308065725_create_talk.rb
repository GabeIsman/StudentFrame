class CreateTalk < ActiveRecord::Migration
  def change
    create_table :talk do |t|
      t.integer :agenda_id

      t.timestamps
    end
  end
end
