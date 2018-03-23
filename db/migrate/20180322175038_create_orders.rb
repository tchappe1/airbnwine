class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :shipping
      t.decimal :total
      t.references :order_status, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
