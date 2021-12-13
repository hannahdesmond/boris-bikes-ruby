require 'docking_station'

describe DockingStation do
  let(:bike) { double :bike }
  before do
    allow(bike).to receive(:broken).and_return(false)
    allow(bike).to receive(:report_broken).and_return(:true)
  end
  context 'a new docking station' do 
    it 'stores a collecion of bikes' do
      expect(subject.bikes).to eq([])
    end
    it 'has a default capacity of 20' do
      expect(subject.capacity).to eq(20)
    end
    it 'allows a capacity to be set' do
      docking_station = DockingStation.new(30)
      expect(docking_station.capacity).to eq(30)
    end
  end
  context 'releases and docks bikes' do 
    before do
      allow(bike).to receive(:broken).and_return(false)
      allow(bike).to receive(:report_broken).and_return(true)
    end
    it 'releases working bikes' do
      subject.dock(bike)
      bike = subject.release_bike
      expect(bike.broken).to eq(false) 
    end
    it 'only releases one bike' do
      first_bike = bike
      second_bike = bike
      subject.dock(first_bike) 
      subject.dock(second_bike)
      expect(subject.release_bike).to eq(first_bike)
    end
    it 'docks a bike' do
      subject.dock(bike)
      expect(subject.bikes).to eq([bike])
    end
    it 'shows docked bikes' do
      subject.dock(bike)
      expect(subject.bikes).to eq([bike])
    end
  end
  context 'throws errors' do 
    it 'throws an error for #release_bike if there are no bikes' do
      expect { subject.release_bike }.to raise_error("There are no bikes available")
    end
    it 'throws an error for #dock(bike) if the docking station is full' do
      subject.dock(bike)
      expect { subject.dock(bike).to raise_error("The docking station is full") }
    end
  end
  context 'broken bikes' do
    it 'does not release broken bikes' do
      first_bike = bike
      second_bike = bike
      first_bike.report_broken 
      subject.dock(first_bike)
      subject.dock(second_bike)
      expect(subject.release_bike).to eq(second_bike)
    end
  end
end
