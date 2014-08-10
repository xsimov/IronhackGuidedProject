class User < ActiveRecord::Base
	has_many: bags

	validates :username, presence: true,length: { maximum: 30 }, format: { with: /\A[a-zA-Z0-9' ']*\z/ } 
	
end
