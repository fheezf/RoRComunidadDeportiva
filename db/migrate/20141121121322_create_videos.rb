class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.integer :article_id
      t.string :path

      t.timestamps
    end
  end
end
