class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :sexe, :string
    add_column :users, :age, :integer
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
