class Photo < ApplicationRecord
  has_many :comments, dependent: :destroy
  
  validates_presence_of :title, :photo_url
end
