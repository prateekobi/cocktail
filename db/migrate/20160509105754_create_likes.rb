class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :like
      t.integer :barmen_id, :recipe_id
      t.timestamps
    end
  end
end
