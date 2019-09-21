class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    # Get a list of all the memberships that a specific lifter has
    Membership.all.select {|membership| membership.lifter == self}
  end
  def gyms
    # Get a list of all the gyms that a specific lifter has memberships to
    self.memberships.map{|membership| membership.gym }.uniq
  end

  def self.average_lift
    # Get the average lift total of all lifters
    l_t_array = self.all.map{|lifter| lifter.lift_total}
    l_t_array.sum / l_t_array.count
  end

  def total_costs
    # Get the total cost of a specific lifter's gym memberships
    self.memberships.map{|membership| membership.cost}.sum
  end

  def signup(gym, cost)
    # Given a gym and a membership cost,
    #  sign a specific lifter up for a new gym
    Membership.new(cost, gym, self)
  end

  def self.all
    # Get a list of all lifters
    @@all
  end
end












