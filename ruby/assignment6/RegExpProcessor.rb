class RegExpProcessor

	def self.is_float(value)
		return (value =~ /\d*\.\d+/)
	end
	
	def self.is_complex(value)
		return (value =~ /.*i.*/)
	end
	
	def self.is_date(value)
		firstPart = value.match(/^\d{1,2}[\/\-]/)
		secondPart = value.match(/[\/\-]\d{1,2}[\/\-]/)
		thirdPart = value.match(/[\/\-]\d{4}$/)
		if(thirdPart == nil)
			thirdPart = value.match(/[\/\-]\d{2}$/)
		end
		
		if(firstPart == nil)
			return nil
		end
		if(secondPart == nil)
			return nil
		end
		if(thirdPart == nil)
			return nil
		end
		
		firstPart = firstPart[0].gsub(/[\/\-]/,"").to_i
		secondPart = secondPart[0].gsub(/[\/\-]/,"").to_i
		thirdPart = thirdPart[0].gsub(/[\/\-]/,"")
		 if(thirdPart.to_i > 99 && thirdPart[0] === "0")
			return nil
		 end
		 
		 thirdPart = thirdPart.to_i
		
		return ((firstPart < 13 && secondPart < 32 && ( thirdPart < 100 || (thirdPart > 999 && thirdPart < 3000))) ? 0 : nil)
	end
	
end
