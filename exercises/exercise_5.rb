require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum("annual_revenue")
profitable_stores = Store.where("annual_revenue > ?", 1000000).count
# profitable = Store.where("annual_revenue > ?", 1000000)

puts "The total revenue from all stores is #{total_revenue}."

puts "The average annual revenue for all stores is #{Store.average("annual_revenue")}."
# puts "The average annual revenue for all stores is #{total_revenue / Store.count}."

puts "#{profitable_stores} stores are generating $1M or more in annual sales."
# profitable.each do |store|
#   puts "#{store.name} has an annual revenue of #{store.annual_revenue}."
# end