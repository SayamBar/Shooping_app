class Product < ApplicationRecord
    has_many :orders, :through => :product_orders

    validates :title, presence: true, length: { minimum: 1}
end
