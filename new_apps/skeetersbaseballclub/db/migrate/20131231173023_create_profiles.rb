class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :player_first_name
      t.string :player_last_name
      t.string :player_number
      t.string :player_favorite_team
      t.string :player_favorite_player
      t.string :player_favorite_subject
      t.string :player_career
      t.string :player_favorite_song
      t.string :player_favorite_book
      t.string :player_favorite_movie
      t.string :player_favorite_food
      t.string :player_nickname

      t.timestamps
    end
  end
end
