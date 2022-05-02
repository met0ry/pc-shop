class AddPowerSuppliesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :power_supplies do |t|
      t.string :sku
      t.string :brand

      t.text :tag

      t.integer :wattage
      t.integer :energy_conversion_efficiency

      t.integer :warranty

      t.float :price

      t.timestamps
    end
  end
end
