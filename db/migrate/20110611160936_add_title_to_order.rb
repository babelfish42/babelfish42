class AddTitleToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :title, :string
  end

  def self.down
    remove_column :orders, :title
  end
end
