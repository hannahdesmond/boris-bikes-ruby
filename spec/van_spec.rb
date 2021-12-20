require 'van'

describe Van do
  let(:bike) { double :bike }
  let(:docking_station) { double :docking_station }
  before do
    allow(bike).to receive(:broken).and_return(true)
    # allow(docking_station).to receive(:bikes).and_return([bike])
  end
  it 'stores bikes in the van on the way to the station' do
      expect(subject.bikes).to eq([])
  end
  it 'collects broken bikes from docking stations' do
    bike.broken
    van.collect(broken_bikes)
    expect(van.bikes) to include(bike)
  end
  it 'delivers broken bikes to garages' do

  end
  it 'has a capacity of ...' do
  end

end