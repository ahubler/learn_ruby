class Timer #displays a time based on the value of @seconds
  def initialize()
  	@seconds = 0
  	@time_string = '00:00:00'
  end

  def seconds
  	@seconds
  end

  def seconds=(value)
  	@seconds = value
  end

  def time_string #converts @seconds into hours minutes and seconds, then outputs in HH:MM:SS format
  	hours = padded(@seconds/3600)
  	minutes = padded((@seconds%3600)/60)
  	seconds = padded(@seconds%3600%60)
  	@time_string = "#{hours}:#{minutes}:#{seconds}"
  end

  def padded(value) #adds a 0 to the front of single digits
  	if value<10
  		value = "0#{value}"
  	else
  		"#{value}"
  	end
  end
end
