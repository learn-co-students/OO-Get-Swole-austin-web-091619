require_relative 'lifter'
require_relative 'gym'

class Membership

  attr_reader :lifter, :gym, :cost

  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost

    @@all << self
  end

  # CLASS METHODS BELOW

  def self.all
    @@all
  end

end
