class AddPasswordToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :password, :string
  end
end
