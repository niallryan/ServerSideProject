class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :weight
      t.text :colour
      t.string :category

      t.timestamps
    end
  end
end
