class Trip < ActiveRecord::Base
	belongs_to :bag

	validates :city, presence: true
	validates :country, presence: true
	validates :from_date, presence: true
	validates :to_date, presence: true

	validate :from_date_it_before_to_date

	def from_date_it_before_to_date
	    if from_date.to_i > to_date.to_i
	        errors.add(:form_date, 'Your from_date can not be bigger than your to_date')
	    end
	end
end
