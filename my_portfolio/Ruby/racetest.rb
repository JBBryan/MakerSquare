require_relative 'racing_cars.rb'

car_a = RaceCar.new("Porshe", "Blue")
car_b = RaceCar.new("Lambo", "Red")
daytona = RaceTrack.new("Datona")

daytona.add_car(car_a)
daytona.add_car(car_b)
daytona.start_race
daytona.foreward_one_hour
daytona.foreward_one_hour
daytona.foreward_one_hour
daytona.foreward_one_hour
daytona.foreward_one_hour
daytona.foreward_one_hour


