class ProductAsCartItem < ActiveRecord::Migration
  def change
    add_column :products, :owner_id, :integer
    add_column :products, :owner_type, :string
    add_column :products, :quantity, :integer
    add_column :products, :item_id, :integer
    add_column :products, :item_type, :string
  end
end
