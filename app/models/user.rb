class User < ActiveRecord::Base
	has_many :tickets
	has_many :comments
	has_many :orders
	
	
	validates :username, format:{with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	has_secure_password
	validates :password_digest, presence: true
	
	
end
