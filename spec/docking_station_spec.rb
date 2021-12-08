require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it 'docks a bike' do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq(bike)
  end
  it 'shows docked bikes' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bike).to eq(bike)
  end
  it 'throws an error if there are no bikes' do
    bike = subject.release_bike
    expect { subject.release_bike }.to raise_error("There are no bikes available")
  end
end