class AddPitchToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :pitch, :text
  end
end
