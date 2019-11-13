require "docking_station.rb"
describe DockingStation do
  it "release bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "docks the bike at docking station" do
    expect(subject).to respond_to(:dock)
  end
end
