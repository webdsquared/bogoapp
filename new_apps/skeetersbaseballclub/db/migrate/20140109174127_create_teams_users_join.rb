class CreateTeamsUsersJoin < ActiveRecord::Migration
  def change
    create_table :teams_users, id: false do |t|
    	t.column 'team_id', :integer
    	t.column 'user_id', :integer
    end
  end
end
