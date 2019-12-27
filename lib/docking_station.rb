require_relative 'bike'

class DockingStation
  attr_reader :working_bikes, :broken_bikes, :capacity

  def initialize(capacity = 20)
    @working_bikes = []
    @broken_bikes = []
    @capacity = capacity
  end 

  def release_bike
    raise 'No bike available' if empty? 
    @working_bikes.pop 
  end

  def dock(bike)
    raise 'docking station is full' if full?
    return @broken_bikes << bike if bike.broken?
    @working_bikes << bike
  end 

  private

  
  def full? 
    @working_bikes.count + @broken_bikes.count >= @capacity
  end 

  def empty? 
    @working_bikes.empty? 
  end 
  
end 