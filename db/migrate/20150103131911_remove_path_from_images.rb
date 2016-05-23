class RemovePathFromImages < ActiveRecord::Migration
  def change
      remove_column :images, :path_file_name, :string
      remove_column :images, :path_content_type, :string
      remove_column :images, :path_file_size, :integer
      remove_column :images, :path_updated_at, :datetime
  end
end
