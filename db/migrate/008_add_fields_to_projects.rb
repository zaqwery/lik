class AddFieldsToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.string :date
      t.string :author
      t.string :stage
      t.decimal :area
      t.decimal :site_area
    end
  end

  def self.down
    change_table :projects do |t|
      t.remove :date
      t.remove :author
      t.remove :stage
      t.remove :area
      t.remove :site_area
    end
  end
end
