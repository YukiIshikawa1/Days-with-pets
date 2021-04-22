class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy


  belongs_to :user
  belongs_to :pet

  attachment :post_image 

  validates :post_image, presence: true
  validates :title, presence: true
  validates :text, presence: true
  
end
