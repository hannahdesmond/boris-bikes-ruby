require_relative 'bike'

class Garage

  include BikeContainer

  def fix
    @bikes.map do |bike|
      bike.bike_fixed
    end
  end
end