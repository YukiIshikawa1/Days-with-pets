class Genre < ApplicationRecord
  
  has_many :posts
  has_many :pets
  
  validates :animal_type,presence: true
  validates :type,       presence: true

end
