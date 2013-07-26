class AddPasswordConfirmationToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :password_confirmation, :string
  end
end
