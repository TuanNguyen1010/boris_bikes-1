class DockingStation

  attr_reader :bike

  def release_bike
      fail "no bikes available" unless @bike
      @bike
  end

  def dock(bike)
    fail "dock full" unless !@bike
    @bike = bike
  end

end

class Bike
  def working?
  end
end
