class AddProcessorsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :processors do |t|
      t.string :sku
      t.string :brand

      t.text :tag

      t.string :processor_series
      t.string :socket_type

      t.integer :cores
      t.integer :threads

      t.float :base_frequency

      t.integer :warranty

      t.float :price

      t.timestamps
    end
  end
end
