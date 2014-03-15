class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :provider_id
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
    add_index :products, :provider_id
  end
end
