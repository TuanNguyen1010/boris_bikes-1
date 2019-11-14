class DockingStation

  attr_reader :bike_arr
  def initialize
    @bike_arr =[]
  end

  def release_bike
      if @bike_arr.length > 0
        @bike_arr.pop
      else
        fail "no bike available"
      end
  end

  def dock(bike)
    if @bike_arr.length < 21
      @bike_arr<< bike
      return @bike_arr.length
    else
      fail "dock is full"
    end
  end

end

class Bike
  def working?
  end
end
