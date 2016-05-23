class RemoveImageVideoLocationToArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :image, :string
    remove_column :articles, :video, :string
    remove_column :articles, :location, :string
  end
end
