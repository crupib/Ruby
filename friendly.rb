class Hello
	def howdy
		greeting = "Hello, Jack Meoff!"
		puts greeting
	end
end
class Goodbye < Hello
	def solong
		farewell =  "Goodbye, Jack Meoff!"
		puts farewell
	end
end
friendly = Goodbye.new
friendly.howdy
friendly.solong