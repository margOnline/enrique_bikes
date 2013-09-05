class Station

  def initialize bikes=[]
    @bikes = bikes
  end

  def has_bikes?
    !@bikes.empty?
  end

  def rent_bike
    raise 'No bikes in Station' if !has_bikes?
    @bikes.pop  
  end

end