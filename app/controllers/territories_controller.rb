class TerritoriesController < ApplicationController
	def index
		@user = current_user
		@territory = Territory.find_by_user_id(@user.id)
		
		@zipcode = @territory.zipcode
		
		@indivs = Indiv.find_all_by_zip(@zipcode)
		@orgs = Org.find_all_by_zipcode(@zipcode)
		
	end
	
private
  

end
