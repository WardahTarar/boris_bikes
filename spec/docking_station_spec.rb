require "docking_station"

describe DockingStation do
  it "will respond to release_bike" do
    instance = DockingStation.new
    expect(instance).to respond_to(:release_bike)
  end
end