require_relative 'bike'
require_relative 'docking_station'

class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def collect(bikes)
    bikes.map! do |bike| 
      if bike.broken == true
        @bikes << bike
      end
    end
    
  end
end