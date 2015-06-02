class Artwork < ActiveRecord::Base

  has_many :comments, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
  validates :history, presence: true, length: { maximum: 1000 }
 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.jpg"
        validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end

