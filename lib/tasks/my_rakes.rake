 desc "Import users." 
  task :import_users => :environment do
	users = File.open("users.txt", "r").map do |line|
      email, password, territory = line.strip.split("\t")
      u = User.new(:email => email, :password => password, :territory => territory)
    end
	User.import users
  end
  
   desc "Import indivs." 
	task :import_indivs => :environment do
		indivs = File.open("indivs.txt", "r").map do |line|
			hms_piid,first,last,specialty,address1,address2,city,state,zip,phone,bucket_1_rank,bucket_2_rank,bucket_3_rank,	bucket_4_rank = line.strip.split("\t")            
			Indiv.new(:hms_piid => hms_piid, :first => first, :last => last, :specialty => specialty, :address1 => address1, :address2 => :address2, :city => city, :state => state, :zip => zip, :phone => phone,  :bucket_1_rank => :bucket_1_rank, :bucket_2_rank => :bucket_2_rank, :bucket_3_rank => bucket_3_rank, :bucket_4_rank => bucket_4_rank)
		end
	Indiv.import indivs
  end
  
   desc "Import orgs." 
	task :import_orgs => :environment do
		orgs = File.open("orgs.txt", "r").map do |line|
		  hms_poid,orgname,address1,address2,city,state,zipcode,phone, org_bucket_1_rank, org_bucket_2_rank, org_bucket_3_rank, org_bucket_4_rank = line.strip.split("\t")
		  Org.new(:hms_poid => hms_poid, :orgname => orgname, :address1 => address1, :address2 => address2, :city => city, :state => state, :zipcode => zipcode, :phone => phone, :org_bucket_1_rank => org_bucket_1_rank, :org_bucket_2_rank => org_bucket_2_rank, :org_bucket_3_rank => org_bucket_3_rank, :org_bucket_4_rank => org_bucket_4_rank)
		end
	Org.import orgs
  end
  
   desc "Import pxdx." 
	task :import_pxdx => :environment do
		pxdx = File.open("pxdx.txt", "r").map do |line|
			indiv_id, org_id, bucket_1_phys_fac_rank, bucket_2_phys_fac_rank,
			bucket_3_phys_fac_rank, bucket_4_phys_fac_rank = line.strip.split("\t")
			Pxdx.new(:indiv_id => indiv_id, :org_id => org_id, :bucket_1_phys_fac_rank => bucket_1_phys_fac_rank, :bucket_2_phys_fac_rank => bucket_2_phys_fac_rank, :bucket_3_phys_fac_rank => bucket_3_phys_fac_rank, :bucket_4_phys_fac_rank => bucket_4_phys_fac_rank)
		end
	 Pxdx.import pxdx
    end
	
	desc "Import territories"
	
		task :import_territories => :environment do
			territories = File.open("territories.txt", "r").map do |line|
				zipcode, terr_code, user_id = line.strip.split("\t")
				Territory.new(:zipcode => zipcode, :terr_code => terr_code, :user_id => user_id)
			end
		Territory.import territories
	end
		
	desc "Update Indivs"
		task :update_indivs => :environment do
			Indiv.all.each do |indiv|
				firsts = ['Bill', 'Ted', 'Andy', 'Tim', 'Emir', 'Kevin', 'Matthew', 'Bill']
				lasts = ['Stevens', 'Jeffreos', 'Davis', 'Wilkins', 'Smith', 'Knight', 'Murphy', 'Jones']
				
				rand_first = firsts[rand(firsts.length)]
				rand_last = lasts[rand(lasts.length)]
				indiv.update_attributes(:first => rand_first, :last => rand_last, :phone => '327-782-2104')
			end	
		end
	
	desc "Update Orgs"
		task :update_orgs => :environment do
			Org.all.each do |org|
				orgnames=['Frank White Hospital', 'Manheim Clinic', 'Altoona Academy', 'County Memorial', 'United Imaging', 'University Trauma', 'City Surgical Center', 'Bayside Clinic', 'Alan Jaffrey Practice', 'Tim Toady MD', 'Mountain View Hospital', 'El Dorado Hospital']
				phones = ['337-286-9127', '610-999-4886', '610-789-7897', '555-5211', '392-227-6912', '486-290-7723', '212-359-5436']
				
				rand_orgname = orgnames[rand(orgnames.length)]
				rand_phone = phones[rand(phones.length)]
				
				org.update_attributes(:orgname => rand_orgname, :phone => rand_phone)
			end
		end
			
		
		
		
