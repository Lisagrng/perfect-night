class AddColumoAtUserToActivities < ActiveRecord::Migration[7.0]
  def change
    add_reference :activities, :user, foreign_key: true
  end
end
