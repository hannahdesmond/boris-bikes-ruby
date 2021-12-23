module BikeContainer
  attr_reader :bikes
  attr_reader :capacity
  attr_reader :broken_bikes
  DEFAULT_CAPACITY = 20
  
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

end