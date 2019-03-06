require_relative "bike"

class DockingStation
  attr_reader :bike_list

  def initialize
    @bike_list = Array.new
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike_list << bike 
  end
end