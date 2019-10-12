require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"
require "pry"



person1 = Person.new("Dan")

magazine1 = Magazine.new("Tech", "New Update...")

subscription1 = Subscription.new(person1, magazine1)

#Template each class - should be able to track all its instances to set the relationship between Person and Magazine, we are using Subscription.

binding.pry