require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Total revenue is #{Store.sum(:annual_revenue)}"
puts "average revenue is #{Store.average(:annual_revenue)}"

puts "Stores with annual revenue over 1M: #{Store.where("annual_revenue > 1000000").count}"
