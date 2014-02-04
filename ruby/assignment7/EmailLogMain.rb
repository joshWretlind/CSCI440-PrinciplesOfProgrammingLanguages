=begin
	Authors: Josh Wretlind
			 Travis Boyd
	Date: 02/03/2014
	Version: 2.0.0
=end

#This is just a standard data object
class EmailData
	def initialize(from, id, date, size)
		@toAddresses = []
		@fromAddress = from
		@messageID = id
		@sentDate = date
		@messageSize = size
	end
	
	def toAddresses=(value)
		@toAddresses=value
	end
	
	def fromAddress=(value)
		@fromAddress=value
	end
	
	def messageID=(value)
		@messageID=value
	end
	
	def messageID
		@messageID
	end
	
	def sentDate=(value)
		@sentDate=value
	end
	
	def messageSize=(value)
		@messageSize=value
	end
	
	def addToAddress(newAddress)
		@toAddresses << newAddress
	end
	
	def to_s
		outString=" 
ID:   #{@messageID}   
From: #{@fromAddress} 
Date: #{@sentDate}    
Size: #{@messageSize} 
To: "
		
		@toAddresses.each do | address |
			outString += "#{address} "
		end
		outString += " \n"
		return outString
	end
end

def readFile(fileName)
	lines=IO.readlines(fileName)
	count = 0
	idTable = {}

	lines.each do |line|
		if(line =~ /qmgr.*from/)
			count += 1
			id = line.match(/\: .*\: f/)[0].gsub(/[: f]/,"")
			from = line.match(/<.*>/)[0].gsub(/[<>]/,"")
			size = line.match(/size=\d+/)[0].gsub(/size=/,"")
			date = line.match(/.* to/)[0].gsub(/to/,"")
			idTable[id] = EmailData.new(from,id,date,size)
		elsif(line =~ /smtp/)
			id = line.match(/\: .*\: t/)[0].gsub(/[: t]/,"")
			to = line.match(/<.*?>,/)[0].gsub(/[<>, ]/,"")
			idTable[id].addToAddress(to)

		end
	end
	return count, idTable
end

def printReport(idTable, count)

	idTable.each do |value, entry|
		puts entry
	end 

	puts "Total number of  emails: #{count}"

end


count, idTable = readFile("mail.log")
printReport(idTable,count)
