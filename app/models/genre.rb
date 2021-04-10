class Genre < ApplicationRecord
  
  has_many :posts, through: :post_genres
  has_many :post_genres 
  
  accepts_nested_attributes_for :post_genres
  
  belongs_to :post, optional: true
  belongs_to :pet, optional: true
  
  validates :animal_type, presence: true
  validates :type,        presence: true
  
  self.inheritance_column = :_type_disabled # この行を追加

end
