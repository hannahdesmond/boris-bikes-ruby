require_relative 'bike'

class DockingStation
  attr_reader :bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    !empty? ? Bike.new : raise("There are no bikes available")
  end

  def dock(bike)
    full? ? raise("The docking station is full") : @bikes << bike
  end

  private 

  def full?
    true if @bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    true if @bikes.length < 1
  end
end

# at the moment, release bike is creating a new bike instead of releasing 
# one already in the docking station.
# I want to dock an existing bike 
# I want to release that same bike.
# releasing that bike will return that bike from the array
# could I iterate over the array and return only one bike if it is working? 