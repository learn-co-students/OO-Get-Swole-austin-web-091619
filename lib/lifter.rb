require_relative "membership"
require_relative "gym"

class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    all_memberships = Membership.all
    my_memberships = all_memberships.select{ |membership| membership.lifter == self}
    my_memberships 

  end

  def gyms
    all_gyms = Gym.all
    my_gyms = all_gyms.select{ |gym| gym.lifter == self}
    my_gyms 

  end

  def self.avg_lift
    totals = Lifter.all.map{|lifter| lifter.lift_total}
    totals.reduce(:+) / totals.length.to_f
  end

  def total_cost
    all_memberships = Membership.all
    my_memberships = all_memberships.select{ |membership| membership.lifter == self}
    my_memberships.map{|membership| membership.cost}.sum

  end

  def gym_signup(gym)
    Gym.new(gym, self)

  end


end
