#
#
# @reference: Agile Web Development with Rails
#             Ruby, S. et al. (2011) Agile Web Development with Rails. 4th ed.
#             Dallas: Pragmatic Bookshelf.
#
#

class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type

  has_many :line_items, dependent: :destroy

  PAYMENT_TYPES = [ "Cheque", "Credit Card", "Cash On Delivery"]

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
