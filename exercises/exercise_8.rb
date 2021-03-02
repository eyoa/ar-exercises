require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'



potato = @store1.employees.create(first_name: "Mr", last_name: "Potato", hourly_rate: 50)
roboto = @store2.employees.create(first_name: "Mister", last_name: "Roboto", hourly_rate: 50)

# puts potato.password
puts "#{roboto.password}"