class AddColumnAtVilleToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :ville, :string
  end
end
