class RemoveNameAndPathFromImages < ActiveRecord::Migration
  def change
      remove_column :images, :name, :string
      remove_column :images, :path, :string
  end
end
