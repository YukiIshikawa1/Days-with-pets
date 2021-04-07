class Post < ApplicationRecord
  
  has_many :comments
  has_many :favorites
  
  belongs_to :genre, optional: true
  belongs_to :user, optional: true
  belongs_to :pet, optional: true
  
  attachment :post_image 
  
  validates :post_image, presence: true
  validates :title, presence: true
  validates :text, presence: true

end
