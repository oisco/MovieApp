class Movie < ActiveRecord::Base
	has_many :showings, dependent: :destroy
		has_many :comments,:dependent=> :destroy

		validate :must_have_valid_trailer
	def must_have_valid_trailer 
	   unless trailer.include?("<iframe")   
		errors.add(:trailer, "Must include an iframe tag") 
	   end  
	end
	
	def average_stars
		comments.average(:stars)
	end

end
