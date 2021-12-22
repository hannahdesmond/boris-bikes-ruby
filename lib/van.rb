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
      while @bikes.length < DEFAULT_CAPACITY do
        @bikes << bike
        bikes.shift
      end
    end
  end

  def deliver(repair_location)
    repair_location << @bikes
  end
end
