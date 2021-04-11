class Pet < ApplicationRecord
  
  has_many :posts
  has_many :categories
  has_many :genres
  
  belongs_to :user, optional: true
  
  attachment :pet_image 

  validates :name, presence: true
  validates :pet_image, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  
  
end
