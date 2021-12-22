require 'garage'
require 'bike'

describe Garage do
  it 'stores a collecion of bikes' do
    expect(subject.bikes).to eq([])
  end

  it 'fixes broken bikes' do
    bike = Bike.new
    bike.report_broken
    subject.bikes << bike
    subject.fix
    expect(subject.bikes[0].broken).to eq(false)
  end
end