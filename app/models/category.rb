class Category < ApplicationRecord
  
  has_many :posts
  has_many :pets
  
  has_ancestry
  
  validates :category, presence: true, uniqueness: true
  
end
