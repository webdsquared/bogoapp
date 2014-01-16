class AddGuestUserIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :guest_user_id, :integer
  end
end
