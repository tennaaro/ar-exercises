require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...


class Store < ActiveRecord::Base
  has_many :employees
end

#  id | name | annual_revenue | mens_apparel | womens_apparel | created_at | updated_at 

burnaby = {name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true}
richmond = {name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true}
gastown = {name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false}

stores = Store.create([burnaby, richmond, gastown])

puts Store.count

# {name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true}
# Burnaby = Store.new
# Burnaby.name = "Burnaby"
# Burnaby.annual_revenue = 300000
# Burnaby.mens_apparel = true
# Burnaby.womens_apparel = true

# Richmond = Store.new
# Richmond.name = "Richmond"
# Richmond.annual_revenue = 1260000
# Richmond.mens_apparel = false
# Richmond.womens_apparel = true

# Gastown = Store.new
# Gastown.name = "Gastown"
# Gastown.annual_revenue = 190000
# Gastown.mens_apparel = true
# Gastown.womens_apparel = false
