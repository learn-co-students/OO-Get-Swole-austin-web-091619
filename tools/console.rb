# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

planetfit = Gym.new("planetfit")
somegym = Gym.new("Some Gym")

ashley = Lifter.new("Ashley", 9001)
joelle = Lifter.new("Joelle", 9002)
Membership.new(10, joelle, somegym)
Membership.new(20, ashley, planetfit)
Membership.new(20, joelle, planetfit)
ashley.signup(somegym, 5)
# puts ashley.membership_list
# puts ashley.gym_memberships
# puts Lifter.average_lift
# puts joelle.total_cost
# puts ashley.total_cost
# puts planetfit.memberships
# puts planetfit.liftersatgym
# puts planetfit.lifternamelist

puts planetfit.combined