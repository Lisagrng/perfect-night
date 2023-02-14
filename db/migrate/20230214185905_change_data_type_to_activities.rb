class ChangeDataTypeToActivities < ActiveRecord::Migration[7.0]
  def change
    change_column(:activities, :start_at, :string)
    change_column(:activities, :end_at, :string)
    change_column(:activities, :open_at, :string)
    change_column(:activities, :close_at, :string)
  end
end
