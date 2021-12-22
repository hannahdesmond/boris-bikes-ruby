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
      if bike.broken == true
        while @bikes.length < DEFAULT_CAPACITY do
          @bikes << bike
          bikes.shift
        end
      end
    end
  end


end
