class AddHnoToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :hno, :string
  end

  def self.down
    remove_column :orders, :hno
  end
end
