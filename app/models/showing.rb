class Showing < ActiveRecord::Base
	belongs_to :theatre
	belongs_to :movie
	
	validates :theatre_id, presence: true
	validates :movie_id, presence: true


end
