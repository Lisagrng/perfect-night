class AddColumnAtCategorieToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :categorie, :string
  end
end
