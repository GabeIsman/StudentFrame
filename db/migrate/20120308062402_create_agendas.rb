class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end
