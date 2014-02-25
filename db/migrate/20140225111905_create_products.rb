class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.has_attached_file :photo

      t.timestamps
    end
  end
end
