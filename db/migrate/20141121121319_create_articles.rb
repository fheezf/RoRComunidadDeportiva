class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :image
      t.string :video
      t.datetime :published_at

      t.timestamps
    end
  end
end
