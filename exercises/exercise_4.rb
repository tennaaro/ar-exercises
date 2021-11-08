require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
#  id | name | annual_revenue | mens_apparel | womens_apparel | created_at | updated_at 


surrey = {name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true}
whistler = {name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false}
yaletown = {name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true}

stores = Store.create([surrey, whistler, yaletown])

@mens_stores = Store.where(mens_apparel: true)

# Loop through each of these stores and output their name and annual revenue on each line.

@mens_stores.each do |store|
  puts "Name: #{store.name} and Anual Revenue: $ #{store.annual_revenue}"
end

#Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

@another_fetch = Store.where("annual_revenue < ?", 1000000).where(womens_apparel: true)

@another_fetch.each do |store|
  puts "Name: #{store.name} and Anual Revenue: #{store.annual_revenue}"
end