require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil 
      puts "I am in the if clause"
      bike = Bike.new 
      puts "I am the new #{bike}"
    else 
      puts "I am in the else clause"
      raise("There are no bikes available")
      puts "I am after the exception"
    end
  end

  def dock(bike)
    @bike = bike
  end

end