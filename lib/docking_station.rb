class DockingStation

  attr_reader :bike_arr
  def initialize
    @bike_arr =[]
  end

  def release_bike
    fail "no bike available" if empty?
    @bike_arr.pop
  end

  def dock(bike)
    fail "dock is full" if full?
    @bike_arr<< bike
    @bike_arr.length
  end

  private
  def full?
    @bike_arr.length >= 20
  end

  def empty?
    @bike_arr.empty?
  end
end
