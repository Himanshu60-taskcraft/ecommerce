class Product < ApplicationRecord
  belongs_to :categ
  has_one_attached :image 
end
