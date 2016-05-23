class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :location_id
      t.string :name
      t.string :surname
      t.string :email
      t.integer :role_id

      t.timestamps
    end
  end
end
