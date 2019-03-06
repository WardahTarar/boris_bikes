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
    expect{ victoria_station.release_bike }.to raise_error("Dock Empty")
  end

  it 'gives error that dock is full when trying to dock' do
    victoria_station = DockingStation.new
    bike1 = Bike.new
    victoria_station.dock(bike1)
    bike2 = Bike.new
    expect{ victoria_station.dock(bike2) }.to raise_error("Dock full!")
  end
end