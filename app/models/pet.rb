class Pet < ApplicationRecord
  
  has_many :post
  
  belongs_to :users
  belongs_to :genre

  validates :name,presece: true
  validates :image,presece: true
  validates :gender,presece: true
  validates :age,presece: true
  
  
end
