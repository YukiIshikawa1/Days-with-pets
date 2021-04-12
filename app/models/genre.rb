class Genre < ApplicationRecord
  
  has_many :pets
  has_many :posts
  
  belongs_to :category

  validates :animal_type, presence: true


end
