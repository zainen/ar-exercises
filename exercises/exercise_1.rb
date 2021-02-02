require_relative '../setup'

puts "Exercise 1"
puts "----------"

#   * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# * Richmond (annual_revenue of 1260000 carries women's apparel only)
# * Gastown (annual_revenue of 190000 carries men's apparel only)

# Your code goes below here ...

class Store < ActiveRecord::Base
  has_many :employees
end

burnaby = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond =  Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
puts Store.count
# store.save
# store = Store.new do |s|
#   s.name = 'Burnaby'
#   s.annual_revenue = 300000
#   s.mens_apparel = true
#   s.womens_apparel = true
# end
# store.save
