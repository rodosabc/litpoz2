class AddHolidayIdToPoems < ActiveRecord::Migration
  def change
      add_column :poems, :holiday_id, :integer
      add_foreign_key :poems, :holidays
    end
end
