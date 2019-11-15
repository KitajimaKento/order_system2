class CreateOrderSelects < ActiveRecord::Migration[5.2]
  def change
    create_table :order_selects do |t|
      t.integer :order_ID
      t.integer :menu_ID

      t.timestamps
    end
  end
end
