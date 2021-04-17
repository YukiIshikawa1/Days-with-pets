class Category < ApplicationRecord
  
  has_many :posts
  has_many :pets
  has_many :genres
  
  belongs_to :user

  
  validates :category, presence: true, uniqueness: true
  
end
