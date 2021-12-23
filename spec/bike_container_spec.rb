require 'bike_container'

shared_examples_for "bike container" do
  describe 'bike container' do 
  it 'stores a collecion of bikes' do
    expect(subject.bikes).to eq([])
  end

  it 'has a default capacity' do
    expect(subject.capacity).to be_a_kind_of(Integer) # be a number
  end

  it 'can initialize with a custom capacity' do
    container = described_class.new(12)
    expect(container.capacity).to eq(12)
  end


end

end