class RemoveProductAsCartItem < ActiveRecord::Migration
  def change
    remove_column :products, :owner_id
    remove_column :products, :owner_type
    remove_column :products, :quantity
    remove_column :products, :item_id
    remove_column :products, :item_type
  end
end
