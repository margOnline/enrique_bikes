require 'station'

describe Station do 
  let(:station) {Station.new}

  it 'has no bikes' do
    expect(station).not_to have_bikes
  end

  it 'has bikes' do
    station = Station.new [:bike]
    expect(station).to have_bikes
  end

  it 'can rent a bike' do
    station = Station.new [:bike]
    expect(station.rent_bike).to eq :bike
  end


  it 'does not rent a bike if there are not bikes' do
    expect{station.rent_bike}.to raise_error 'No bikes in Station'
  end
  
end