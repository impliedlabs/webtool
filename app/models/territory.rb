class Territory < ActiveRecord::Base
	
	has_many :indivs
	has_many :orgs
end
