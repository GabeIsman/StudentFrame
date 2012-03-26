class AddSubtitleToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :subtitle, :string
  end
end
