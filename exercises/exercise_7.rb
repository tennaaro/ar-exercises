require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# * Employees must always have a first name present
# * Employees must always have a last name present
# * Employees have a hourly_rate that is a number (integer) between 40 and 200
# * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
# * Stores must always have a name that is a minimum of 3 characters
# * Stores have an annual_revenue that is a number (integer) that must be 0 or more


puts "Please enter a store name"
print ">"
answer = $stdin.gets.chomp


puts "before #{Store.count}"

stores = Store.create(name: answer)

stores.errors.full_messages.each do |error|
  puts "this is the error: #{error}"
end



puts "after #{Store.count}"