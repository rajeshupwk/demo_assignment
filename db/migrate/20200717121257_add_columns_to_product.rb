class AddColumnsToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :price, :decimal, precision: 5, scale: 2, default: 0
    add_column :products, :quantity, :integer
  end
end
