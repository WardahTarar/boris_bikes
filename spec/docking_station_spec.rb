require "docking_station"
require "bike"

describe DockingStation do
  it "will respond to release_bike" do
    instance = DockingStation.new
    expect(instance).to respond_to(:release_bike)
  end

  it "will get bike" do
    # when release_bike is called...
    # it creates a new Bike instance

    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end
end