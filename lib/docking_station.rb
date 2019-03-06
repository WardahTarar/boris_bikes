require_relative "bike"

class DockingStation
  attr_reader :bike_list

  def initialize
    @bike_list = []
  end

  def release_bike
    raise "Dock Empty" if @bike_list.empty?
    Bike.new
  end

  def dock(bike)
    @bike_list << bike 
  end
end