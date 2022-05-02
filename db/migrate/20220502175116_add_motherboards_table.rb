class AddMotherboardsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :motherboards do |t|
      t.string :sku
      t.string :brand

      t.text :tag

      t.string :socket_type
      t.string :ram_type
      t.string :chipset_type

      t.integer :max_ram_support
      
      t.integer :warranty

      t.float :price

      t.timestamps
    end
  end
end
