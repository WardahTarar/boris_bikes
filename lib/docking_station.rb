require_relative "bike"

class DockingStation
  attr_reader :bike_list

  def initialize(capacity = 1)
    @bike_list = [].take(capacity)
    @capacity = capacity
  end

  def release_bike
    raise "Dock Empty" if @bike_list.empty?
    Bike.new
  end

  def dock(bike)
    raise "Dock full!" if @bike_list.length == @capacity
    @bike_list << bike 
  end
end