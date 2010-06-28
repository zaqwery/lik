class RemoveColumnsFromPhotos < ActiveRecord::Migration
  def self.up
    remove_column :photos, :image_content_type
    remove_column :photos, :image_file_size 
  end

  def self.down
    add_column :photos, :image_content_type
    add_column :photos, :image_file_size
  end
end
