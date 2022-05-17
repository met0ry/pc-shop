class AddOrdersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user
      t.string :items, array: true, default: []

      t.timestamps
    end
  end
end
