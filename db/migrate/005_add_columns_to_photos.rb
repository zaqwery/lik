class AddColumnsToPhotos < ActiveRecord::Migration
  def self.up
    rename_column :photos, :image_file_name, :image
  end

  def self.down
    rename_column :photos, :image, :image_file_name
  end
end
