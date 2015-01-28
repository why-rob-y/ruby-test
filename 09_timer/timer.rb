class Timer
attr_reader :seconds

def initialize
@seconds = 0
end

def seconds=(value)
@seconds = value
end

def time_string
disp_hours = (@seconds / 3600).floor
disp_minutes = ((@seconds - disp_hours * 3600) / 60).floor
disp_seconds = @seconds - disp_hours * 3600 - disp_minutes * 60 

return padded(disp_hours) + ":" + padded(disp_minutes) + ":" + padded(disp_seconds)
end
def padded(number)   #takes a number, but returns a string

if number > 99 
	return "99"
	end
	
if number < 10
	return "0" + number.floor.to_s
else
	return number.floor.to_s		
end
end
end
