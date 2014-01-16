class AddUserIdToPractices < ActiveRecord::Migration
  def change
    add_column :practices, :user_id, :integer
  end
end
