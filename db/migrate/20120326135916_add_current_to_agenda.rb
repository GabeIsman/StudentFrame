class AddCurrentToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :current, :boolean
  end
end
