class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :description
      t.float :price
      t.integer :amount

      t.timestamps
    end
  end
end
