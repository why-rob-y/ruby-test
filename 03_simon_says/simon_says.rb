def echo(in_string)
return in_string
end

def shout(in_string)
return in_string.upcase
end

def repeat(in_string, times = 2)
return (in_string+" ")*(times -1) + in_string
end

def start_of_word(in_string, number)
return in_string[0..(number -1)]
end

def first_word(in_string)
return in_string.split(" ")[0]
end







def titleize(in_string)

#in_string.capitalize



in_array = in_string.split(" ")
#p "in_array: " 
#p in_array
loop_max = in_array.length - 1
#p "loop_max: "
#p loop_max
out_array = []

for i in 0..loop_max
	if (in_array[i] == "and" || in_array[i] == "over" || in_array[i] == "the")
		out_array<<in_array[i]
	else 	out_array<<in_array[i].capitalize
		end
	end
	
out_array[0] = out_array[0].capitalize

#p "out_array: "
#p out_array
out_string = out_array.join(" ").to_s
# p out_string
return out_string

end

#titleize("first second third fourth")