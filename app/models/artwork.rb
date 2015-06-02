class Artwork < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :history, presence: true, length: { maximum: 1000 }
  validates :location, presence: true
  validates :
end

