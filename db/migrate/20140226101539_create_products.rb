class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price

      t.timestamps
    end

    add_attachment :products, :picture
  end
end
