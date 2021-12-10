require_relative 'bike'

class DockingStation
  attr_reader :bikes
  CAPACITY = 20

  def initialize 
    @bikes = []
  end

  def release_bike
    !empty? ? Bike.new : raise("There are no bikes available")
  end

  def dock(bike)
    full? ? raise("The docking station is full") : @bikes << bike
  end

  private 

  def full?
    true if @bikes.length == CAPACITY
  end

  def empty?
    true if @bikes.length < 1
  end
end