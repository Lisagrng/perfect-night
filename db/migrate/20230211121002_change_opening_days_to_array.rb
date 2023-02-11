class ChangeOpeningDaysToArray < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :opening_days, :integer, array: true, default: [], using: 'ARRAY[opening_days]::INTEGER[]'
  end
end
