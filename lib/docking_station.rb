require_relative 'bike'
require_relative 'van'

class DockingStation
  attr_reader :bikes
  attr_reader :broken_bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    if @bikes.length >= 1
      bike_to_ride = @bikes.delete_at(@bikes.index {|bike| bike.broken == false } )
    else
      raise("There are no bikes available")
    end
  end

  def dock(bike)
    raise("The docking station is full") if full? 
    if bike.broken == false
      @bikes << bike
    else
      @broken_bikes << bike
    end
  end

  private 

  def full?
    true if @bikes.length + @broken_bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    true if @bikes.length < 1
  end
end

