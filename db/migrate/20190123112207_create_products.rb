class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :descrription
      t.decimal :price
      t.boolean :is_available
      t.integer :store_id

      t.timestamps
    end
  end
end
