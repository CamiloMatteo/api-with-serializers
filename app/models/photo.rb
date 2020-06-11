class Photo < ApplicationRecord
  has_many :comments
  
  validates_precense_of :title
end
