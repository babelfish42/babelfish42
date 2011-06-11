class AddZipToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :zip, :integer
  end

  def self.down
    remove_column :orders, :zip
  end
end
