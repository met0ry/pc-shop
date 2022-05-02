class AddSsdsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :ssds do |t|
      t.string :sku
      t.string :brand

      t.text :tag

      t.string :interface
      t.string :form_factor

      t.integer :capacity
      t.integer :read_speed
      t.integer :write_speed
      
      t.integer :warranty

      t.float :price

      t.timestamps
    end
  end
end
