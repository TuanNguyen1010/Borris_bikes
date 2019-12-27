require 'docking_station'
require 'bike'

describe DockingStation do
  let(:bike) {double :bike, broken?: false, report_broken: true}
  let(:broken_bike) {double :broken_bike, broken?: true}
  describe '#capacity' do 

    it 'has a capacity of 50 when set' do 
      ds = DockingStation.new(50)
      expect(ds.capacity).to eq(50)
    end 
  end 


  describe '#release_bike' do 
    it 'respond to release a bike' do
      ds = DockingStation.new
      expect(ds).to respond_to(:release_bike)
    end

    it 'returns a bike object' do 
      ds = DockingStation.new
      ds.dock(bike)
      expect(ds.release_bike).to eq(bike)
    end

    it 'raises an error when no bike is docked' do
      ds = DockingStation.new
      expect{ds.release_bike}.to raise_error 'No bike available'
    end 

    it "doesn't release broken bike" do
      ds = DockingStation.new
      ds.dock(broken_bike)
      expect{ds.release_bike}.to raise_error 'No bike available'
    end 
  end 

  describe '#dock' do 
    it 'docks a bike into the Docking station' do 
      ds = DockingStation.new
      expect(ds).to respond_to(:dock).with(1).argument
    end 

    it 'raises an error if there docking station is full' do
      ds = DockingStation.new
      ds.capacity.times {ds.dock(bike)}
      expect{ ds.dock(bike) }.to raise_error('docking station is full')
    end 
  end 
end 