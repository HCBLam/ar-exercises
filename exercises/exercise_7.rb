require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  has_one :store
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

print "Give me a store name >> "
store_name = gets.chomp
puts "Your store is #{store_name}."

new_store = Store.create(name: store_name)
new_store.errors.each { | attribute, message | puts "Validation Error: #{attribute} #{message}." }
# new_store.errors.each do | attribute, message |
#   puts "Validation Error: #{attribute} #{message}."
# end
