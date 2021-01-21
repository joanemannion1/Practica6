class Racional 
        attr_reader :n, :d
        def initialize(n,d)
		@n, @d = n, d
	end
	def to_s
		("#{@n}/#{@d}")
	end
	def + (other)
		Racional.new(@n+other.n, @d + other.d)
	end
	def - (other)
                Racional.new(@n-other.n, @d - other.d)
        end
	def * (other)
                Racional.new(@n*other.n, @d * other.d)
        end
	def / (other)
                Racional.new(@n*other.d, @d * other.n)
        end


	
end
	

