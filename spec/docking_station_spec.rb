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
end