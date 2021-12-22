require_relative 'bike'

class Garage
  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def fix
    @bikes.map do |bike|
      bike.bike_fixed
    end
  end
end