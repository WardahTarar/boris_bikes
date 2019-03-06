require "docking_station"

describe DockingStation do
  it "will respond to release_bike" do
    victoria_station = DockingStation.new
    expect(victoria_station).to respond_to(:release_bike)
  end

   it "will get bike" do
      victoria_station = DockingStation.new
      bike = Bike.new
      victoria_station.dock(bike)
      expect(victoria_station.release_bike).to be_an_instance_of(Bike)
   end

  it 'dock bike at docking station' do
    victoria_station = DockingStation.new
    expect(victoria_station).to respond_to(:dock)
  end

  it 'add 1 bike to docked_bikes' do
    victoria_station = DockingStation.new
    bike1 = Bike.new
    #victoria_station.dock(bike)
    expect(victoria_station.dock(bike1))
  end

  it 'add 1 bike to docked_bikes' do
    victoria_station = DockingStation.new
    bike = Bike.new
    victoria_station.dock(bike)
    expect(victoria_station.bike_list).to include(bike)
  end

  it 'gives error if no bikes' do
    victoria_station = DockingStation.new
    bike1 = Bike.new
    victoria_station.dock(bike1)
    expect{ victoria_station.release_bike }.to_not raise_error("Dock Empty")
  end
end