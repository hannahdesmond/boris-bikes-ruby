require_relative 'bike'

class DockingStation
  CAPACITY = 20

  attr_reader :bikes

  def initialize 
    @bikes = []
  end

  def release_bike
    if @bikes.length >= 1
      Bike.new 
    else 
      raise("There are no bikes available")
    end
  end

  def dock(bike)
    if @bikes.length >= CAPACITY
      raise("The docking station is full")
    else
      @bikes << bike
    end
  end

end