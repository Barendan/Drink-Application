class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :address
      t.string :phone
      t.string :contact_name

      t.timestamps
    end
  end
end
