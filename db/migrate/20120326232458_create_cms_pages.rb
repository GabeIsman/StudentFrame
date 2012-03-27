class CreateCmsPages < ActiveRecord::Migration
  def change
    create_table :cms_pages do |t|

      t.timestamps
    end
  end
end
