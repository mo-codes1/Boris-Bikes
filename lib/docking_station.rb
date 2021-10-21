require_relative 'bike'

class DockingStation
  DEFAUlT_CAPACITY = 20
  attr_accessor :capacity
  
  def initialize(capacity = DEFAUlT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "There are no bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "This docking station is full" if full?
    @bikes << bike
  
  end

  private 

  attr_reader :bikes

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length >= capacity
  end


end
 

