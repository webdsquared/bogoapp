class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :publish_on
      t.text :body
      t.string :status
      t.boolean :published

      t.timestamps
    end
  end
end
