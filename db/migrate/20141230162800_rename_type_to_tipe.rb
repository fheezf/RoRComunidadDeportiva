class RenameTypeToTipe < ActiveRecord::Migration
  def change
      rename_column :articles, :type, :tipe
  end
end
