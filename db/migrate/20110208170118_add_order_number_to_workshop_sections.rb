class AddOrderNumberToWorkshopSections < ActiveRecord::Migration
  def self.up
    add_column :workshop_sections, :order_number, :integer
  end

  def self.down
    remove_column :workshop_sections, :order_number
  end
end
