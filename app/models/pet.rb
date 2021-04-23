class Pet < ApplicationRecord
  has_many :posts

  belongs_to :user

  attachment :pet_image

  validates :name, presence: true
  validates :pet_image, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :category, presence: true
  validates :genre, presence: true

  enum gender: { 男の子: 0, 女の子: 1, 不明: 2 }
end
