require 'person'

describe Person do
  let(:person) {Person.new}
  
  it 'has no bike' do
    expect(person).not_to have_bike
  end

  it 'can rent a bike from a station' do
    station = double :station
    expect(station).to receive(:rent_bike)
    person.rent_bike_from station
  end

  it 'has a bike after renting it from the station' do
    station = double :station, rent_bike: :bike
    person.rent_bike_from station
    expect(person).to have_bike
    #example of rspec syntactic sugar, naming substitutions
  end

  it 'can return a bike to a station' do
    person = Person.new :bike
    station = double :station

    #set up expectation about what is going to happen
    expect(station).to receive(:dock).with(:bike)
    # make it happen
    person.return_bike_to station
  end

  it 'has no bike after docking it at the station' do
    person = Person.new :bike
    station = double :station, dock: ''

    person.return_bike_to station

    expect(person).not_to have_bike
  end

  it 'can break bike' do
    bike = double :bike
    expect(bike).to receive(:break!)

    person = Person.new bike

    person.accident
  end

end