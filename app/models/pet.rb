class Pet < ApplicationRecord
  
  has_many :posts
  
  belongs_to :user
  belongs_to :genre 
  
  attachment :pet_image 

  #validates :name, presence: true
  #validates :pet_image, presence: true
  #validates :gender, presence: true
  #validates :age, presence: true
  
  
end
