class Cart < ActiveRecord::Base
	has_many :lineitems
	
	def add_ticket(showing_id)
		current_item =lineitems.find_by_showing_id(showing_id)
		if current_item
			current_item.quantity+=1
		else
			current_item=lineitems.new(showing_id:showing_id)
			current_item.quantity=1
		end
		current_item
	end
end
