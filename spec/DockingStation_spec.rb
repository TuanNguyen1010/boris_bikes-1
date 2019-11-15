require "docking_station.rb"
require "Bike.rb"

describe DockingStation do
  describe "#new" do
    it "should have default capacity of 20" do
      station = DockingStation.new
      expect(station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

    it "should accept new value as the capacity" do
      station = DockingStation.new(36)
      expect(station.capacity).to eq(36)
    end
  end

  describe "#release_bike" do
    it "checking if the release bike new bike works" do
      expect(subject).to respond_to(:release_bike)
    end

    it "raise an erorr when there is no bike docked" do
      station = DockingStation.new
      expect{station.release_bike}.to raise_error "no bike available"
    end
  end

  describe "#dock" do
    it "docks the bike at docking station" do
      bike = DockingStation.new
      expect(bike).to respond_to(:dock).with(1).argument
    end

    it "checks if the bike has been docked" do
      station = DockingStation.new
      expect(station.dock(Bike.new)).to eq(1)
    end

    it "checks attr_reader fuction" do
      station = DockingStation.new
      bike1 = Bike.new
      station.dock(bike1)
      expect(station.bike_arr).to eq([bike1])
    end

    it "raises an error if trying to dock a bike when the docking station already has 1 bike" do
      station = DockingStation.new
      station.dock(Bike.new)
      x = DockingStation::DEFAULT_CAPACITY
      expect{ x.times {station.dock(Bike.new)}}.to raise_error "dock is full"
    end
  end
end
