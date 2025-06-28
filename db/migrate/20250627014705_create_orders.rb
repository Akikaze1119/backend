class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :progress
      t.text :description
      t.datetime :estimated_finish_date
      t.string :status
      t.string :client_name
      t.string :client_email

      t.timestamps
    end
  end
end
