require_relative 'membership'
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

  def newmem(price, gym)
    Membership.new(price, self, gym)
  end

  def membership_list
    Membership.all.select { |mem| mem.lifter == self }
  end

  def gym_memberships
    membership_list.map { |mem| mem.gym}
  end

  def self.average_lift
    people = Lifter.all.count
    num = 0
    amount = Lifter.all.each do |lifter|
      num += lifter.lift_total
    end
    amount = num/people
    amount
  end

  def total_cost
    acc = 0
    membership_list.each do |mem| 
      acc += mem.cost
    end
    acc
  end

  def signup(gym, cost)
    Membership.new(cost, self, gym)
  end

end
