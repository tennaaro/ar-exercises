require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total sum is: $#{Store.sum(:annual_revenue)}"

puts "Average revenue is: $#{Store.average(:annual_revenue)}"

puts "Number of stores makeing over $1,000,000: #{Store.where("annual_revenue >= ?", 1000000).count}"