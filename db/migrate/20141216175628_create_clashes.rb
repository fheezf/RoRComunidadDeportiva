class CreateClashes < ActiveRecord::Migration
  def change
    create_table :clashes do |t|
      t.integer :local_team
      t.integer :foreign_team
      t.datetime :date

      t.timestamps
    end
  end
end
