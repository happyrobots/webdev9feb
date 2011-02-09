class GrowSizeInWorkshopSections < ActiveRecord::Migration
  def self.up
    change_column :workshop_sections, :title, :string, :size => 600
    change_column :workshop_sections, :description, :string, :size => 3000
    change_column :workshop_sections, :external_links, :string, :size => 3000
  end

  def self.down
    change_column :workshop_sections, :title, :string, :size => 255
    change_column :workshop_sections, :description, :string, :size => 255
    change_column :workshop_sections, :external_links, :string, :size => 255
  end
end
