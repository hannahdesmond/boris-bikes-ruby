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
          bikes.pop
        end
      end
    end
  end
end

# do I want some kind of inheritance? 
# for the van, garage and station classes
# to inherit some of the same methods/behaviour?
# or do they want to inherit from bike? 
# Inherit #broken?
# use extend container for example

# Another thing I can do is have a superclass
# and have other classes inherit from it. 

# Adam does 'include Module'. How could this help me?