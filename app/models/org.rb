class Org < ActiveRecord::Base
	has_many :pxdxes
	has_many :indivs, :through => :pxdxes
	belongs_to :territory
	
	
	cattr_reader :per_page
	@@per_page = 15
	
	def self.search(search)  
	  if search  
		where('orgname LIKE ? OR city LIKE ? OR zipcode LIKE ?', "%#{search}%", "%#{search}%", "%#{search}")
	  else  
		scoped 
	  end  
	end
	
	def self.find_territories(id)
		find_all_by_zipcode(id)
	end
	
	
	acts_as_gmappable
	
		def gmaps4rails_address
			"#{self.address1},#{self.address2},#{self.city},#{self.state},#{self.zipcode}"
		end
end
