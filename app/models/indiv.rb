class Indiv < ActiveRecord::Base
	has_many :pxdxes
	has_many :orgs, :through => :pxdxes
	belongs_to :territory
	
	
	#def to_param
		#hms_piid.parameterize
	#end
	
	def self.search(search)  
	  if search  
		where('first LIKE ? OR last LIKE ? OR zip LIKE ? or city like ?', "%#{search}%", "%#{search}%" ,"%#{search}%", "%#{search}%")
	  else  
		scoped 
	  end  
	end
end
