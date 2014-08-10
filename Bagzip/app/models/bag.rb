class Bag < ActiveRecord::Base
	belongs_to :location
	has_many :items
	has_one :trip

	validates :bagname, presence: true,length: { maximum: 30 }, format: { with: /\A[a-zA-Z0-9' ']*\z/ } 
end
