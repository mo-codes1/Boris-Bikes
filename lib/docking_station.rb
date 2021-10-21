require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []

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
  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length >= 20 
  end


end
 