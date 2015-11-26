class Cart < ActiveRecord::Base
    has_many :cart_itens, depenedent: :destroy
    has_many :items, through: :cart_items, source: :product
end
