require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#release_bike' do 
    it 'respond to release a bike' do
      ds = DockingStation.new
      expect(ds).to respond_to(:release_bike)
    end

    it 'returns a bike object' do 
      ds = DockingStation.new
      bike = Bike.new
      ds.dock(bike)
      expect(ds.release_bike).to eq(bike)
    end

    it 'raises an error when no bike is docked' do
      ds = DockingStation.new
      expect{ds.release_bike}.to raise_error 'No bike available'
    end 
  end 

  describe '#dock' do 
    it 'docks a bike into the Docking station' do 
      ds = DockingStation.new
      expect(ds).to respond_to(:dock).with(1).argument
    end 

    it 'shows docked bikes' do 
      ds = DockingStation.new
      bike = Bike.new
      ds.dock(bike)
      expect(ds).to respond_to(:bikes)
    end 

    it 'raises an error if there docking station is full' do
      ds = DockingStation.new
      20.times {ds.dock(Bike.new)}
      expect{ ds.dock(Bike.new) }.to raise_error('docking station is full')
    end 
  end 
end 