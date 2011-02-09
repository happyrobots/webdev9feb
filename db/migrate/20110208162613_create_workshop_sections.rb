class CreateWorkshopSections < ActiveRecord::Migration
  def self.up
    create_table :workshop_sections do |t|
      t.string :title
      t.string :description
      t.string :external_links

      t.timestamps
    end
  end

  def self.down
    drop_table :workshop_sections
  end
end
