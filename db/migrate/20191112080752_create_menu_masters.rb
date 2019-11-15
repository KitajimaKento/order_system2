class CreateMenuMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_masters do |t|
      t.integer :menu_ID
      t.string :name
      t.integer :price
      t.integer :price_tax_not

      t.timestamps
    end
  end
end
