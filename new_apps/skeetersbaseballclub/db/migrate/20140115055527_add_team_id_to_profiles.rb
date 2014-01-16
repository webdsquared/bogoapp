class AddTeamIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :team_id, :integer
  end
end
