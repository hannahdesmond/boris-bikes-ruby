require_relative 'bike'
require_relative 'docking_station'

class Van
  include BikeContainer

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
