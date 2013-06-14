class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :spent, precision: 8, scale: 2
      t.decimal :saved, precision: 8, scale: 2
      t.datetime :date

      t.timestamps
    end
  end
end
