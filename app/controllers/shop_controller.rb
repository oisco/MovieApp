class ShopController < ApplicationController
  def index
	@showings=Showing.all
  end
end
