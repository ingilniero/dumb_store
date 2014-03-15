class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :address_id
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :providers, :address_id
  end
end
