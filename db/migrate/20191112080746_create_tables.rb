class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.integer :table_ID
      t.boolean :status

      t.timestamps
    end
  end
end
