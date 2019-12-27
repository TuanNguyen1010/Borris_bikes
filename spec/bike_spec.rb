require 'bike'

describe Bike do 
  describe '#working' do 
    it 'responds to working?' do
      bike = Bike.new
      expect(bike).to respond_to(:working?)
    end 
  end 

  describe '#report_broken' do
    it 'reports broken bikes' do 
      bike = Bike.new
      bike.report_broken
      expect(bike.broken?).to eq(true)
    end 
  end

end 