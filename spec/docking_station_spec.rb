require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it 'docks a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
  it 'shows docked bikes' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bike).to eq(bike)
  end
  it 'throws an error for #release_bike if there are no bikes' do
    bike = subject.release_bike
    expect { subject.release_bike }.to raise_error("There are no bikes available")
  end
  it 'throws an error for #dock(bike) if the docking station is full' do
    bike = Bike.new
    subject.dock(bike)
    expect { subject.dock(bike).to raise_error("The docking station is full") }
  end
end