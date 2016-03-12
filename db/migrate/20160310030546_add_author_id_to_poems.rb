class AddAuthorIdToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :author_id, :integer
    add_foreign_key :poems, :authors
  end
end
