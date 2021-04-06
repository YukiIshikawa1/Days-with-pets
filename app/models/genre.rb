class Genre < ApplicationRecord
  
  has_many :posts
  has_many :pets
  
  validates :animal_type, presence: true
  validates :type,        presence: true
  
  self.inheritance_column = :_type_disabled # この行を追加

end
