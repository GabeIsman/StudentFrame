class AddAgendaIdToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :agenda_id, :integer
  end
end
