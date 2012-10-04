class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :item
      t.references :user
      t.integer :count

      t.timestamps
    end
    add_index :orders, :item_id
    add_index :orders, :user_id
  end
end
