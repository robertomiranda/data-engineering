class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float :price
      t.text :description
      t.references :merchant

      t.timestamps
    end
    add_index :items, :merchant_id
  end
end
