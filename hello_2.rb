class Hello
	def initialize(name)
		@name = name
	end
	def hello_matz
		puts "Hello, " +@name + "|"
	end
end
hi = Hello.new("Matz")
hi.hello_matz