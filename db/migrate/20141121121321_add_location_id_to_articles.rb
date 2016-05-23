class AddLocationIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :location_id, :integer
  end
end
