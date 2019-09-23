require_relative "membership"

class Gym
  attr_reader :name, :lifter, :membership
  
  @@all = []

  def initialize(name, lifter, membership)
    @name = name
    @lifter = lifter
    @@all << self
  end

  def self.all
    @@all
  end

  # Get a list of all memberships at a specific gym
  def all_memberships
    all_gyms = Gym.all
    my_gym = all_gyms.select{|gym| gym == self}
    my_gym
  end

  # Get a list of all the lifters that have a membership to a specific gym
  def all_lifters
    all_gyms = Gym.all
    my_gym = all_gyms.select{|gym| gym == self}
    my_lifters = my_gym.select{|gym| gym.lifter}
    my_lifters
  end

  # Get a list of the names of all lifters that have a membership to that gym
  def all_lifter_names
    my_lifters = all_lifters
    my_lifter_names = my_lifters.map{|gym| gym.lifter.name}
    my_lifter_names

  end




end
