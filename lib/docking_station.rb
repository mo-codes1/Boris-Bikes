class DockingStation

  attr_reader :bike

  def release_bike
    fail 'no bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  def see_bike
    @bike
  end

  


end
 