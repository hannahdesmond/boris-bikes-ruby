require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil 
      @bike = Bike.new 
    else 
      raise("There are no bikes available")
    end
  end

  def dock(bike)
    if @bike != nil 
      raise("The docking station is full")
    else
      @bike = bike
    end
  end

end