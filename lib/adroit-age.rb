require 'active_support/core_ext'

class AdroitAge
	def self.find_age(dob)
 	 	dob = dob.to_date
  		now = Time.now.utc.to_date
  		age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  		raise RuntimeError, 'adroit-age ~> invalid date - Please check the date' if age < 0  
	    age
	end
end