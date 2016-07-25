class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer  :user_id
      t.integer  :driver_id
      t.integer  :product_id
      t.integer  :quantity
      t.datetime :scheduled_for
      t.integer  :status_id

      t.timestamps
    end
  end
end
