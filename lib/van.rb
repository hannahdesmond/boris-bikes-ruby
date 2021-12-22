require_relative 'bike'
require_relative 'docking_station'

class Van
  attr_reader :bikes
  DEFAULT_CAPACITY = 10

  def initialize
    @bikes = []
  end

  def collect(bikes)
    bikes.map! do |bike| 
      bikes.length.times do
        @bikes << bike
        bikes.shift
        break if full?
      end
    end
  end

  def deliver(delivery_location)
    @bikes.each do |bike|
      delivery_location << bike 
    end
  end

  def full?
    @bikes.length == DEFAULT_CAPACITY
  end
end
