class TerritoriesController < ApplicationController
	def index
		@user = current_user
		@territory = Territory.find_by_user_id(@user.id)
		
	end
end
