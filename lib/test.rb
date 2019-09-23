require_relative 'membership'
require_relative 'gym'
require_relative 'lifter'

oscar = Lifter.new("Oscar", 27)
brad = Lifter.new("Brad", 210)
alex = Lifter.new("Alex", 2)

abp = Gym.new("ABP")
summit = Gym.new("Summit")
narg = Gym.new("NARG")

oscar.new_gym(abp, 75)
oscar.new_gym(summit, 80)
oscar.new_gym(narg, 50)
brad.new_gym(abp, 75)
alex.new_gym(abp, 75)


puts "ABP lifters"
puts abp.lifter_names
puts abp.lift_total
puts ""

puts "Oscar memberships"
puts oscar.total_cost
puts ""

puts "AVG lifting"
puts Lifter.average_lift

