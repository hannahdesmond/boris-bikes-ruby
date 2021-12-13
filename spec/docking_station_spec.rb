require 'docking_station'

describe DockingStation do
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
    it 'releases working bikes' do
      bike = Bike.new
      subject.dock(bike)
      subject.release_bike
      expect(bike.broken).to eq(false)
    end
    it 'only releases one bike' do
      first_bike = Bike.new
      second_bike = Bike.new
      subject.dock(first_bike)
      subject.dock(second_bike)
      expect(subject.release_bike).to eq(first_bike)
    end
    it 'docks a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq([bike])
    end
    it 'shows docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq([bike])
    end
  end
  context 'throws errors' do 
    it 'throws an error for #release_bike if there are no bikes' do
      expect { subject.release_bike }.to raise_error("There are no bikes available")
    end
    it 'throws an error for #dock(bike) if the docking station is full' do
      bike = Bike.new
      subject.dock(bike)
      expect { subject.dock(bike).to raise_error("The docking station is full") }
    end
  end
  context 'broken bikes' do
    it 'does not release broken bikes' do
      first_bike = Bike.new
      second_bike = Bike.new
      first_bike.report_broken
      subject.dock(first_bike)
      subject.dock(second_bike)
      expect(subject.release_bike).to eq(second_bike)
    end
  end
end
