require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@womens_stores = Store.where(womens_apparel: true)

@mens_stores.each { |store| puts "#{store.name} has an annual revenue of #{store.annual_revenue}." }

# @mens_stores.each do |store|
#   puts "#{store.name} has an annual revenue of #{store.annual_revenue}."
# end

@womens_stores.each do |store|
  if store.annual_revenue < 1000000
    puts "#{store.name} carries women's apparel and has an annual revenue of less than 1,000,000 (#{store.annual_revenue})."
  end
end
