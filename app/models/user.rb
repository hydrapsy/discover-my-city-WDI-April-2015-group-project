class User < ActiveRecord::Base
	
	has_many :comments, dependent: :destroy

	validates :password, confirmation: true
	validates_uniqueness_of :email
	validates_presence_of :fname, :lname, :email, :password
	validates :password, presence: true, on: :create
	validates :password_confirmation, presence: true, on: :create


	def self.find_by_email(email)
		User.where("lower(email) = ?", email.downcase).first
	end

end
