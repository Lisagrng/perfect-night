class AddProgramToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :program, :text
  end
end
