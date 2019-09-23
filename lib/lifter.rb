require_relative 'membership'
require_relative 'gym'

class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self}
  end

  def gyms
    memberships.map { |membership| membership.gym}
  end

  def total_cost
    total = 0
    memberships.each { |membership| total += membership.cost}
    total
  end

  def new_gym (gym, cost)
    Membership.new(self, gym, cost)
  end

  # CLASS METHODS BELOW

  def self.all
    @@all
  end

  def self.average_lift
    total_lift = 0
    @@all.each { |lifter| total_lift += lifter.lift_total}
    total_lift / @@all.length
  end

end
