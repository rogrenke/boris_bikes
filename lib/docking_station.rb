require '/Users/ro/Documents/03Learning2Code/Makers/boris_bikes/lib/bike.rb'

class DockingStation
  attr_reader :bike_docked
  def initialize
    @bike_docked = false
  end

  def release_bike
    raise "No bike available!" unless @bike_docked
    @bike_docked = false
    Bike.new
  end

  def dock_bike(bike)
    @bike_docked = true
  end
end
