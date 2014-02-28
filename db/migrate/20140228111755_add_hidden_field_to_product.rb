class AddHiddenFieldToProduct < ActiveRecord::Migration
  def change
    add_column :products, :available, :boolean, default: false
  end
end
