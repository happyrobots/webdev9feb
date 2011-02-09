class AddDetailsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :full_name, :string
    add_column :users, :is_committee, :boolean
    add_column :users, :is_present, :boolean
    add_column :users, :contact_no, :string
    add_column :users, :current_status, :string
    add_column :users, :programme_year, :string
  end

  def self.down
    remove_column :users, :programme_year, :string
    remove_column :users, :current_status, :string
    remove_column :users, :contact_no, :string
    remove_column :users, :is_present
    remove_column :users, :is_committee
    remove_column :users, :full_name
  end
end
