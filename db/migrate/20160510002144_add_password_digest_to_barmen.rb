class AddPasswordDigestToBar < ActiveRecord::Migration
  def change
    add_column :bar, :password_digest, :string
  end
end
