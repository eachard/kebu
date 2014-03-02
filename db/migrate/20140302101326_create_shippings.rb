class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.string :fullname
      t.integer :phone_number
      t.string :address
      t.string :zipcode
      t.string :compagnie
      t.text :extra_informations
      t.string :city

      t.timestamps
    end
  end
end
