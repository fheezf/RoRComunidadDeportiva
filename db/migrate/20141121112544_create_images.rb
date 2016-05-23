class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.integer :article_id
      t.string :path

      t.timestamps
    end
  end
end
