

class Bike

  def working?
    true if @condition == 'working'
  end 
  
  def report_broken
    @broken = true
  end 

  def broken?
    @broken
  end 
end 