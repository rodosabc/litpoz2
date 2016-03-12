class AddKeywordsToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :keywords, :text
  end
end
