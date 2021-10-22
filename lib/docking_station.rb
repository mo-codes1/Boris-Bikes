require_relative 'bike'

class DockingStation
  attr_accessor :capacity, :bikes
  DEFAUlT_CAPACITY = 20
  
  def initialize(capacity = DEFAUlT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    working_bikes = @bikes.select { |bike| bike.broken_bike == false }
    fail "There are no bikes available" if working_bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "This docking station is full" if full?
    @bikes << bike
  
  end

  private 

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length >= capacity
  end


end
 

