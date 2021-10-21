class DockingStation

  attr_reader :bike

  def release_bike
    fail "There are no bikes available" unless @bike
    @bike 
  end

  def dock(bike)
    fail "This docking station is full" if @bike 
    @bike = bike
  end

  def see_bike
    @bike
  end

  


end
 