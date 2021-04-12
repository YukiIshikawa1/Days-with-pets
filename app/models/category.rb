class Category < ApplicationRecord
  
  has_many :posts
  has_many :pets
  has_many :genres

  
  validates :category, presence: true
  
end
