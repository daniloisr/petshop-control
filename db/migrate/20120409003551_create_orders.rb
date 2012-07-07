class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :dog_id
      t.text    :info
      t.string  :status
      t.float   :price

      t.timestamps
    end
  end
end
