class AddColorIdToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :color_id, :integer
  end

  def self.down
    remove_column :products, :color_id
  end
end
