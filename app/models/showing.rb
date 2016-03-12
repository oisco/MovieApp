class Showing < ActiveRecord::Base
	belongs_to :theatre
	belongs_to :movie
	has_many :lineitems

	validates :theatre_id, presence: true
	validates :movie_id, presence: true
	
	def self.search(query)
		find_by_sql ["SELECT s.* FROM showings s,movies m WHERE m.name LIKE ? AND s.movie_id=m.id;", "%#{query}%"]

	end


end
