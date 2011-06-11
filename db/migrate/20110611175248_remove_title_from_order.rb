class RemoveTitleFromOrder < ActiveRecord::Migration
  def self.up
    remove_column :orders, :title
  end

  def self.down
    add_column :orders, :title, :string
  end
end
