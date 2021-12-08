require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it 'returns a new bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.release_bike(bike)).to eq(bike)
  end
  it 'returns a working bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end
  it 'docks a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq(bike)
  end
  it 'shows docked bikes' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bike).to eq(bike)
  end
end