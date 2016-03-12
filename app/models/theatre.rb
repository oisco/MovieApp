class Theatre < ActiveRecord::Base
	has_many :showings
	
	geocoded_by :location
	after_validation :geocode, :if => :location_changed?

	
	validates :theatreName, presence: true
	validates :location, presence: true
	validates :capacity, presence: true

end
