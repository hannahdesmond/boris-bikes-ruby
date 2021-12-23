require 'van'
require 'bike'

describe Van do
  include_examples 'bike container'
  describe 'collecting broken bikes' do 
  let(:bike) { instance_double(Bike, broken: false) }
  let(:broken_bike) { instance_double(Bike, broken: true) }
  let(:docking_station) { instance_double(DockingStation, broken_bikes: [broken_bike]) }
  let(:garage) { instance_double(Garage, bikes: [broken_bike]) }
    it 'collects broken bikes from docking stations' do
      subject.collect(docking_station.broken_bikes)
      expect(subject.bikes).to include(broken_bike)
    end
    it 'delivers broken bikes to garages' do
      subject.deliver(garage.bikes)
      expect(subject.bikes).to eq([])  
    end
  end
  describe 'delivering repaired bikes' do
    let(:bike) { instance_double(Bike, broken: false) }
    let(:garage) { instance_double(Garage, bikes: [bike, bike, bike]) }
    let(:docking_station) { instance_double(DockingStation, bikes: []) }
    it 'drops fixed bikes at docking stations' do
      subject.collect(garage.bikes)
      subject.deliver(docking_station.bikes)
      expect(docking_station.bikes).to eq([bike, bike, bike])
    end
  end
  

end