class AddRamsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :rams do |t|
      t.string :sku
      t.string :brand

      t.text :tag

      t.string :memory_series
      t.string :memory_type

      t.string :size

      t.integer :speed
      
      t.integer :warranty

      t.float :price

      t.timestamps
    end
  end
end
