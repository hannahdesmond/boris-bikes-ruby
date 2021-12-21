require 'van'
require 'bike'

describe Van do
  let(:bike) { instance_double(Bike, broken: false) }
  let(:broken_bike) { instance_double(Bike, broken: true) }
  # add them to a bike array?
  let(:docking_station) { instance_double(DockingStation, bikes: [bike, broken_bike, bike]) }
  it 'stores bikes in the van on the way to the station' do
      expect(subject.bikes).to eq([])
  end
  it 'collects broken bikes from docking stations' do
    subject.collect(docking_station.bikes)
    expect(subject.bikes).to include(broken_bike)
    expect(subject.bikes).not_to include(bike)
    expect(docking_station.bikes).not_to include(broken_bike)
  end
  it 'delivers broken bikes to garages' do

  end
  it 'has a capacity of ...' do
  end

end