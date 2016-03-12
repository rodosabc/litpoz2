class AddKeywordsToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :keywords, :text
  end
end
