class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|

      t.string  :name
      t.integer :price
      t.string  :type
      t.string  :brand

      t.timestamps
    end
  end
end
