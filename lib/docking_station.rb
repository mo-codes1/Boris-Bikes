class DockingStation

  attr_reader :bike

  def release_bike
    return Bike.new
  end

  def dock(bike)
    @bike = bike
  end




end
 