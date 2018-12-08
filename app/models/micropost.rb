class Micropost < ApplicationRecord
  belongs_to :user
  #いらない？
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :is_liked, through: :favorites, source: :user
  #追加コード
  
end
