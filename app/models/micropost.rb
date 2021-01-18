class Micropost < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :be_saved_as_favorites, through: :favorites, source: :user
end