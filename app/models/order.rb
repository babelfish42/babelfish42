class Order < ActiveRecord::Base
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  TITLE = ["Mr", "Mrs"]

  validates :title_type, :name, :firstname, :address, :hno, :zip, :city, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES

  has_many :line_items, :dependent => :destroy

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end