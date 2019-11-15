class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_ID
      t.integer :menu_ID
      t.integer :table_ID
      t.string :login_ID
      t.integer :total
      t.integer :total_tax_not
      t.boolean :status

      t.timestamps
    end
  end
end
