class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  


  def self.all
    # Get a list of all gyms
    @@all
  end
  def memberships
    # Get a list of all memberships at a specific gym
    #all memberships at the qym
    Membership.all.select{|member| member.gym == self}
  end
  def lifters
    #Get a list of all the lifters that have a membership to a specific gym
    #returns an array of all the lifters, as Lifters, with memberships
    self.memberships.map{|member| member.lifter }.uniq
  end
  def lifter_names
    # Get a list of the names of all lifters that have a membership to that gym
    #starts with the array of lifters and maps to an array of names that are returned
    self.lifters.map{|lifter|  lifter.name }
  end
  def member_lift_total
    # Get the combined lift total of every lifter has a membership to that gym
    # maps the array of lifters at the gym to a lift_total array then sums it
    self.lifters.map{|lifter| lifter.lift_total}.sum
  end

end
