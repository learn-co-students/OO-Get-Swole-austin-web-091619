# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
jim = Lifter.new("jim", 300)
tiny = Lifter.new("tiny", 1001)
alex = Lifter.new("alex", 602)
tina = Lifter.new("tina", 703)
fred = Lifter.new("fred", 325)

golds = Gym.new("golds")
planet = Gym.new("planet fitness")
abp = Gym.new("abp")

jim.signup(golds, 100)
tiny.signup(golds, 100)
alex.signup(golds, 100)
tina.signup(golds, 100)
fred.signup(golds, 100)

tiny.signup(planet, 50)
fred.signup(planet, 50)
tina.signup(planet, 50)

fred.signup(abp, 75)
jim.signup(abp, 75)

tiny.signup(abp, 75)
tiny.signup(planet, 25)
tiny.signup(golds, 15)



#lifter class
# Get a list of all lifters
Lifter.all
# Get a list of all the memberships that a specific lifter has
jim.memberships
tiny.memberships 

# Get a list of all the gyms that a specific lifter has memberships to
tiny.gyms
# Get the average lift total of all lifters
Lifter.average_lift
# Get the total cost of a specific lifter's gym memberships
tiny.total_costs
# Given a gym and a membership cost, sign a specific lifter up for a new gym

# Membership

# Get a list of all memberships
Membership.all
# Gym

# Get a list of all gyms
Gym.all

# Get a list of all memberships at a specific gym
golds.memberships
planet.memberships
abp.memberships
# Get a list of all the lifters that have a membership to a specific gym
golds.lifters
# Get a list of the names of all lifters that have a membership to that gym
golds.lifter_names
# Get the combined lift total of every lifter has a membership to that gym
golds.member_lift_total

binding.pry

puts "Gains!"
