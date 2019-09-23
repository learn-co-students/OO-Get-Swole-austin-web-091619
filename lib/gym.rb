require_relative 'membership'
require_relative 'lifter'

class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def memberships
    Membership.all.select { |membership| membership.gym == self}
  end

  def lifters
    memberships.map { |membership| membership.lifter }
  end

  def lifter_names
    lifters.map { |lifter| lifter.name}
  end

  def lift_total
    total = 0
    lifters.each { |lifter| total += lifter.lift_total}
    total
  end

  # CLASS METHODS BELOW

  def self.all
    @@all
  end

end
