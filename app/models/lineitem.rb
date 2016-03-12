class Lineitem < ActiveRecord::Base
	belongs_to :order
	belongs_to :cart
	belongs_to :showing
end
