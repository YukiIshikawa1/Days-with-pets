class Post < ApplicationRecord
  
  has_many :comments
  has_many :favorites
  belongs_to :user
  belongs_to :pet
  
  validates :image, presence: true
  validates :title, presence: true
  validates :text, presence: true

end
