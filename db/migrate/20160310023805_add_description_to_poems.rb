class AddDescriptionToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :description, :text
  end
end
