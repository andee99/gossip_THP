class View

	def create_gossip

		puts "Tapez votre nom, SVP!! "
		authors = gets.chomp

		puts "Hey... le potin, SVP!! "
		contents = gets.chomp

		return {authors => contents}

	end

	def index_gossip(param)

		param.each{|author, gossip|
			puts "#{author}: #{gossip}"
		}

	end

end
