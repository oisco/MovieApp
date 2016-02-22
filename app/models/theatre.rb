class Theatre < ActiveRecord::Base
	has_many :showings
	
	validates :theatreName, presence: true
	validates :location, presence: true
	validates :capacity, presence: true

end
