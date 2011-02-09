class GrowSizeInWorkshopSections < ActiveRecord::Migration
  def self.up
    change_column :workshop_sections, :title, :string, :limit => 600
    change_column :workshop_sections, :description, :string, :limit => 3000
    change_column :workshop_sections, :external_links, :string, :limit => 3000
  end

  def self.down
    change_column :workshop_sections, :title, :string, :limit => 255
    change_column :workshop_sections, :description, :string, :limit => 255
    change_column :workshop_sections, :external_links, :string, :limit => 255
  end
end
