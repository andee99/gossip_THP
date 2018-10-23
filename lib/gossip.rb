class Gossip
	
	def initialize(author, content)

  		@content = content
  		@author = author

	end

	def save

		arr_of_arrs = CSV.read("db/gossip.csv")
		list = arr_of_arrs.to_h

		if list != [] then
			CSV.open("db/gossip.csv", "wb") do |csv|
				list.each {|x,y|
					csv << [x, y]
				}
				csv <<[@author, @content]
			end
		else
			CSV.open("db/gossip.csv", "wb") do |csv|
				csv << [@author, @content]
			end

		end

	end

	def self.content

		arr_of_arrs = CSV.read("db/gossip.csv")

	end

end
