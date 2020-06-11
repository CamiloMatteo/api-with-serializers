class Comment < ApplicationRecord
  belongs_to :photo

  validates_presence_of :content, :owner, :photo_id
end
