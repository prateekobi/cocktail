class RenameCreateBarmen < ActiveRecord::Migration
  def self.up
    rename_table :bar, :bars
  end

  def self.down
    rename_table :bar, :bars
  end
end
