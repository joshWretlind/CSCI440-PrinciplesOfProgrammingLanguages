class RegExpProcessor

	def is_float(value)
		return (value =~ /\d*\.\d+/
	end
	
	def is_complex(value)
		return (value =~ /i/)
	end
	
	def is_date(value)
		firstPart = value.match(/\d{1,2}[\/\-]/)[0].gsub(/[\/\-]/,"")
		secondPart = value.match(/[\/\-]\d{1,2}[\/\-])[0].gsub(/[\/\-]/,"")
		thirdPart = value.match(/[\/\-]\(\d{2}|\d{4}\))[0].gsub(/[\/\-]/,"")
		
	end
	
end
