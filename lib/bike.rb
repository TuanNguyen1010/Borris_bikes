class Bike

  def working?
    true unless broken?
  end 
  
  def report_broken
    @broken = true
  end 

  def broken?
    @broken
  end 
end 