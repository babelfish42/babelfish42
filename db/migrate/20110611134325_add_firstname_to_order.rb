class AddFirstnameToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :firstname, :string
  end

  def self.down
    remove_column :orders, :firstname
  end
end
