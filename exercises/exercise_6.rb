require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# id | store_id | first_name | last_name | hourly_rate | created_at | updated_at

# * Employees have a hourly_rate that is a number (integer) between 40 and 200
# * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
# * Stores must always have a name that is a minimum of 3 characters
# * Stores have an annual_revenue that is a number (integer) that must be 0 or more

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40 }
  validates :first_name, length: {minimum: 3}
end

employees1 = [{first_name: "Khurram", last_name: "Virani", hourly_rate: 60}, {first_name: "Justin", last_name: "Bieber", hourly_rate: 40}, {first_name: "Nicki", last_name: "Minaj", hourly_rate: 100}]

employees2 = [{first_name: "Aaron", last_name: "Tan", hourly_rate: 300}, {first_name: "Craig", last_name: "Gaudolf", hourly_rate: 300}, {first_name: "Troye", last_name: "Sivan", hourly_rate: 100}]

@store1.employees.create(employees1)
@store2.employees.create(employees2)

