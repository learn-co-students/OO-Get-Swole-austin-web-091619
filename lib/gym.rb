class Gym
  attr_reader :name, :gym, :cost

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def memberships
    Membership.all.select { |mem| mem.gym == self }
  end 

  def liftersatgym
    memberships.map { |mem| mem.lifter }
  end

  def lifternamelist
    liftersatgym.map { |mem| mem.name}
  end

  def combined
    com = 0
    liftersatgym.map { |lifter| com += lifter.lift_total }
    com  
  end

end
