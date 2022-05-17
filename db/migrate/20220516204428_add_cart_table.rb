class AddCartTable < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :user
      t.string :items, array: true, default: []

      t.timestamps
    end
  end
end
