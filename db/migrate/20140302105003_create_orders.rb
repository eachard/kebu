class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.date :delivery_date
      t.references :shipping
      t.boolean :status
      t.string :note_for
      t.string :note_to
      t.text :note_message

      t.timestamps
    end
  end
end
