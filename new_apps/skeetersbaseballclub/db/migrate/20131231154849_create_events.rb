class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :start_time
      t.string :arrival
      t.string :opponent
      t.string :home_away
      t.string :game_type
      t.string :location
      t.text :notes

      t.timestamps
    end
  end
end
