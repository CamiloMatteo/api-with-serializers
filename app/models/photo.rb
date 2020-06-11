class Photo < ApplicationRecord
  has_many :comments
  
  validates_presence_of :title, :photo_url
end
