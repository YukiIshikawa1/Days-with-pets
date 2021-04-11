class Genre < ApplicationRecord
  
  has_many :categories
  
  accepts_nested_attributes_for :post_genres
  
  belongs_to :post, optional: true
  belongs_to :pet, optional: true
  
  validates :animal_type, presence: true
  validates :type,        presence: true
  
  self.inheritance_column = :_type_disabled # この行を追加

end
