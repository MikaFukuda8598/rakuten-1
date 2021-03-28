class ShoppingCart < ApplicationRecord
  acts_as_shopping_cart

  def tax_pct
    0
  end
end