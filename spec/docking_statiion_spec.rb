require 'docking_station'
require 'bike'

describe DockingStation do
  it 'respond to release a bike' do
    ds = DockingStation.new
    expect(ds).to respond_to(:release_bike)
  end

  it 'returns a bike object' do 
    ds = DockingStation.new
    bike = ds.release_bike
    expect(bike).to be_working
  end 
end 