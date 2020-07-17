class AddColumnsToProductTable < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :color, :string
    add_column :products, :size, :string
    add_column :products, :pattern, :string
    add_column :products, :shape, :string
  end
end
