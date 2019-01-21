#This migration creates the tables for creating orders
class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.decimal :total

      t.timestamps
    end
  end
end
