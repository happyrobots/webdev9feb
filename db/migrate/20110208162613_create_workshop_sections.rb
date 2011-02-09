class CreateWorkshopSections < ActiveRecord::Migration
  def self.up
    create_table :workshop_sections do |t|
      t.string :title, :size => 600
      t.string :description, :size => 3000
      t.string :external_links, :size => 3000

      t.timestamps
    end
  end

  def self.down
    drop_table :workshop_sections
  end
end
