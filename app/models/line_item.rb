class LineItem < ActiveRecord::Base
  attr_accessible :product_id, :cart_id, :product, :quantity

  belongs_to :product
  belongs_to :cart
  belongs_to :order

end
