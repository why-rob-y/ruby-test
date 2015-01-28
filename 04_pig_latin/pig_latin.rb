def translate(in_string)
in_array = in_string.split(" ")
loop_max = in_array.length - 1
current_word = ""
new_word = ""
word_length = 0
out_array = []

for i in 0..loop_max
	current_word = in_array[i]
	word_length = current_word.length
	
	if 'aeiou'.include?(current_word[0])
		new_word = current_word + 'ay'
	elsif ('aeiou'.include?(current_word[1]) && current_word[0..1].downcase != 'qu')
		new_word = current_word[1..(word_length - 1)] + current_word[0] + 'ay'		
	elsif ('aeiou'.include?(current_word[2]) && current_word[1..2].downcase != 'qu')
		new_word = current_word[2..(word_length - 1)] + current_word[0] + current_word[1] + 'ay'
	else
		new_word = current_word[3..(word_length - 1)] + current_word[0] + current_word[1]+ current_word[2] + 'ay'
	end
	out_array<<new_word

end	

return out_array.join(" ")



end