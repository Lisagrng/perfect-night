class AddColumAtReviewToActivities < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :activity, foreign_key: true
  end
end
