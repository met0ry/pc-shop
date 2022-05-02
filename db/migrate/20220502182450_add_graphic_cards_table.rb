class AddGraphicCardsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :graphic_cards do |t|
      t.string :sku
      t.string :brand

      t.text :tag

      t.integer :memory_interface
      t.integer :memory_size

      t.string :gpu_series
      t.string :memory_type

      t.integer :warranty

      t.float :price

      t.timestamps
    end
  end
end
