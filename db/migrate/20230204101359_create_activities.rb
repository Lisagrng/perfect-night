class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :price_cents
      t.date :start_at
      t.date :end_at
      t.integer :max_number_persons
      t.float :longitude
      t.float :latitude
      t.boolean :workshop
      t.integer :opening_days
      t.time :open_at
      t.time :close_at

      t.timestamps
    end
  end
end
