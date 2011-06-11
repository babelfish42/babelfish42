class AddTitleTypeToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :title_type, :string
  end

  def self.down
    remove_column :orders, :title_type
  end
end
