def add (x, y)
return x + y

end



def subtract (x, y)

return x - y

end


def sum (numbers)
loop_max = numbers.length - 1
total = 0

for i in 0..loop_max
	total = total + numbers[i]
end

return total


end