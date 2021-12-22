require 'garage'

describe Garage do
  it 'stores a collecion of bikes' do
    expect(subject.bikes).to eq([])
  end
end