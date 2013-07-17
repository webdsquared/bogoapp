class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :list_id
      t.boolean :completed

      t.timestamps
    end
  end
end
