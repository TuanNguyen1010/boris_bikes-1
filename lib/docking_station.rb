class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike_arr, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_arr = []
    @capacity = capacity

  end

  def release_bike
    fail "no bike available" if empty?
    fail "no working bike available" unless @bike_arr.any? { |bike| bike.working? }
    @bike_arr.pop
  end

  def dock(bike, options = {broken: false})
    fail "dock is full" if full?
    puts "Thanks for reporting" if options[:broken]
    @bike_arr << bike
    @bike_arr.length
  end

  private
  def full?
    @bike_arr.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bike_arr.empty?
  end
end
