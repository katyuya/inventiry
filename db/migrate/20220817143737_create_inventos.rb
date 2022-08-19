class CreateInventos < ActiveRecord::Migration[5.2]
  def change
    create_table :inventos do |t|
      t.integer :ordernumber
      t.string :customer
      t.string :product
      t.integer :ruler
      t.integer :platform
      t.string :progress

      t.timestamps
    end
  end
end
