require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []

  end

  def release_bike
    fail "There are no bikes available" unless @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "This docking station is full" if @bikes.length >= 20 
    @bikes << bike
  
  end

  def see_bike
    @bike
  end

  


end
 