class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.float :total_amount

      t.timestamps
    end
  end
end
