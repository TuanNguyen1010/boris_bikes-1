require "docking_station"

describe Bike do
  it "Check if bike is working" do
    expect(subject).to respond_to(:working?)
  end


end
