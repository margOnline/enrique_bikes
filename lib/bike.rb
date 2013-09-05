class Bike

  def initialize broken=false
    @broken = broken
  end

  def broken?
    @broken
  end

  def repair!
    @broken = false    
  end

  def break!
    @broken = true
  end

end