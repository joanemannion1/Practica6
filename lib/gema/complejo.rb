class Complejo
	include Comparable
	attr_reader :r, :i
	def initialize(real, imaginario = 0.0)
		@r, @i = real, imaginario
	end

	def to_s
        	("#{@r}+#{i}i")
	end

	def ==(other)
		@r == other.r && @i == other.i
	end

	def +(other)
		Complejo.new(@r + other.r, @i + other.i)
	end 
    	def -(other)
		Complejo.new(@r - other.r, @i - other.i)
	end 
   	 def *(other)
		Complejo.new(@r * other.r, @i * other.i)
	end 
    	def /(other)
		Complejo.new(@r / other.r, @i / other.i)
	end 
 
end
