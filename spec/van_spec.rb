require 'van'
require 'bike'

describe Van do
  let(:bike) { instance_double(Bike, broken: false) }
  let(:broken_bike) { instance_double(Bike, broken: true) }
  let(:docking_station) { instance_double(DockingStation, broken_bikes: [broken_bike]) }
  let(:garage) { instance_double(Garage, bikes: [broken_bike]) }
  it 'stores bikes in the van on the way to the station' do
      expect(subject.bikes).to eq([])
  end
  it 'collects broken bikes from docking stations' do
    subject.collect(docking_station.broken_bikes)
    expect(subject.bikes).to include(broken_bike)
  end
  it 'delivers broken bikes to garages' do
    subject.deliver(garage.bikes)
    expect(subject.bikes).to eq([])  
  end
  describe 'capacity' do 
    let(:docking_station) { instance_double(DockingStation, broken_bikes: [broken_bike] * 11) }
    it 'has a capacity of 10' do
      subject.collect(docking_station.broken_bikes)
      expect(subject.bikes.length).to eq(10)
      expect(docking_station.broken_bikes.length).to eq(1)
    end
  end

end