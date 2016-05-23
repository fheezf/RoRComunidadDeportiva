class AddAttachmentPathToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :path
    end
  end

  def self.down
    remove_attachment :images, :path
  end
end
