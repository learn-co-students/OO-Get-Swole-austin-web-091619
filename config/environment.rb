require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'

#lifters
arnold = Lifter.new("schwarzenegger", 500)
rocky = Lifter.new("stallone", 400)
saul = Lifter.new("saul", 250)

# memberships
mem1 = Membership.new(49, arnold)
mem2 = Membership.new(51, rocky)
mem3 = Membership.new(100, saul)


# gyms
ymca = Gym.new("ymca", arnold, mem1)
golds = Gym.new("golds", rocky, mem2)
golds = Gym.new("golds", saul, mem3)


# puts "========test of list of lifters=========="
# p Lifter.all

# puts "========test of list of memberships a lifter has=========="
# p arnold.memberships

# puts "==== list of all gyms ====="
# p Gym.all

# puts "========list of gyms=========="
# p arnold.gyms

# puts "========avg lift totals=========="
# p Lifter.avg_lift

# puts "=========total costs ========="
# p arnold.total_cost

# puts "====== gym signup========="
# p rocky.gym_signup("equinox")
# p Gym.all

# puts "==========list of all memberships at a specific gym=========="
# p golds.all_memberships

# puts "===== list of all the lifters that have a membership to a specific gym ====="
# p golds.all_lifters

puts "Get a list of the names of all lifters that have a membership to that gym"
p golds.all_lifter_names

# puts "Get the combined lift total of every lifter has a membership to that gym"
# at this point, I realized this schema won't support this method. Not starting over. Moving on. 