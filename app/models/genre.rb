class Genre < ApplicationRecord
  
  has_many :pets
  has_many :posts
  
  belongs_to :category, optional: true
  belongs_to :user

  validates :animal_type, presence: true, uniqueness: true


end
