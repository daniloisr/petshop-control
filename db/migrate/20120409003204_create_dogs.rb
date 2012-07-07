class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.integer :owner_id
      
      t.string :name
      t.string :race

      t.timestamps
    end
  end
end
