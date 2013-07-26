class AddPasswordMigrationToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :password_migration, :string
  end
end
