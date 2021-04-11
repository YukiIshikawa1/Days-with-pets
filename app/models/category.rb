class Category < ApplicationRecord
  belongs_to :post
  belongs_to :pet
  belongs_to :genre
  
  validates :category, presence: true
end
