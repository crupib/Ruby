class Gcdclass

	def initialize( u, v)
		@u = u
		@v = v
	end
	def gcddef
		while @u > 0
			if @u < @v then
					t = @u
					@u = @v
					@v = t
				end
			@u = @u-@v
		end
	end
	def print_gcd
		puts @v
	end
	
end
mygcd = Gcdclass.new(1000,11)
mygcd.gcddef
mygcd.print_gcd
			
    