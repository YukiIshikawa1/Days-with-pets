class Post < ApplicationRecord
  has_many :comments
  has_many :favorites


  belongs_to :genre
  belongs_to :category
  belongs_to :user
  belongs_to :pet, optional: true

  attachment :post_image 

  validates :post_image, presence: true
  validates :title, presence: true
  validates :text, presence: true
  
end
