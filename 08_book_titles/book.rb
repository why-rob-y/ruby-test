def article?(in_string)
down_string = in_string.downcase

if (down_string == "the" || down_string == "a" || down_string == "an")
	return true
else	
	return false
	end

end


def preposition?(in_string)
down_string = in_string.downcase

if (down_string == "in" || down_string == "of")
	return true
else	
	return false
	end

end



def conjunction?(in_string)
down_string = in_string.downcase

if (down_string == "and" || down_string == "or")
	return true
else	
	return false
	end

end






def titleize(in_string)
in_array = in_string.split(" ")
loop_max = in_array.length - 1
out_array = []

for i in 0..loop_max
	if (article?(in_array[i]) || preposition?(in_array[i]) || conjunction?(in_array[i]))
		out_array<<in_array[i]
	else 	out_array<<in_array[i].capitalize
		end
	end
	
out_array[0] = out_array[0].capitalize

out_string = out_array.join(" ").to_s
return out_string

end




class Book
attr_reader :title

	def initialize
		@title = ""
		end
	
	def title=(newTitle)
	@title = titleize(newTitle)
	end
	
end