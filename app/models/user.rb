class User < ActiveRecord::Base
	before_save { self.email = email.downcase}

	validates :name, :email, presence: true
	validates :name, length: { maximum: 50 }
	validates :email, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i , uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }

end
