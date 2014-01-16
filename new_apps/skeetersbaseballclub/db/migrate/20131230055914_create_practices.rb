class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.date :date
      t.string :start_time
      t.string :arrival
      t.string :location
      t.text :notes

      t.timestamps
    end
  end
end
