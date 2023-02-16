class Product < ApplicationRecord
    has_many :orders, :through => :product_orders
    has_one_attached :file, dependent: :destroy

    validates :title, presence: true, length: { minimum: 1}
end
