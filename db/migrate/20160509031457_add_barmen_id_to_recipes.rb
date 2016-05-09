class AddBarmenIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :barmen_id, :integer
  end
end
