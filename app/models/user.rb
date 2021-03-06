class User < ActiveRecord::Base
	has_secure_password
	has_many :posts
	has_many :comments

	validates :email, uniqueness: true, presence: true
	validates :password, presence: true
	validates :username, uniqueness: true, presence: true
end
