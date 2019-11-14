require "docking_station.rb"
describe DockingStation do
  describe "#release_bike" do
    it "release bike" do
      expect(subject).to respond_to(:release_bike)
    end
  end
  describe "#dock" do
    it "docks the bike at docking station" do
      bike = DockingStation.new
      expect(bike).to respond_to(:dock).with(1).argument
    end

    it "checks if the bike has been docked" do
      station = DockingStation.new
      bike1 = Bike.new
      expect(station.dock(bike1)).to eq(bike1)
    end

    it "checks attr_reader fuction" do
      station = DockingStation.new
      bike1 = Bike.new
      station.dock(bike1)
      expect(station.bike).to eq(bike1)
    end
  end


end
