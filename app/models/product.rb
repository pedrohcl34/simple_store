class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :price, :stock_quantity
end
