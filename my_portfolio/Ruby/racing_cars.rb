class RaceCar
	attr_accessor :name
	attr_accessor :color
	def initialize(name, color)
		@name = name
		@color = color
	end
end


class RaceTrack
	def initialize(city)
		@city = city
		@time = 0
		@competetors = {}
		@add_speed = {}
		@miles_travelled ={}
	end

	def add_car(car)
		@competetors[car.name] = 0
		p "#{car.name} approaches the start line!"
	end

	def start_race
	 	@competetors.each{|car, speed| @competetors[car] = rand(60..80)}
	 	print @competetors
	end

	def foreward_one_hour 
		@time = @time + 1
		if @time == 1
			puts "\nWe are #{@time} hour into the race!"
			@competetors.each{|name, speed| puts "    #{name} has travelled #{speed} miles!"}
			@miles_travelled = @competetors.clone
			@competetors.each{|name, speed| @add_speed[name] = rand(0..20)}
			@add_speed.each{|name, num| @competetors[name] += num}
		elsif @time < 5
			@competetors.each{|name, current_speed| @miles_travelled[name] += current_speed}
			puts "\n We are #{@time} hours into the race!"
			@miles_travelled.each do |name, distance| 
				puts "    #{name} has travelled " + (distance).to_s + " miles!"
			end
			@competetors.each{|name, speed| @add_speed[name] = rand(0..20)}
			@add_speed.each{|name, speed| @competetors[name] += speed}
		elsif @time == 5
			@competetors.each{|name, current_speed| @miles_travelled[name] += current_speed}
			puts"\n THE RACE IS OVER!"
			@miles_travelled.each do |name, distance| 
				puts "    #{name} travelled " + (distance).to_s + " miles!"
			end
			
		end


	end


end