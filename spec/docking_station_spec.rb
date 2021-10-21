require './lib/docking_station'

describe DockingStation do

it 'expects a DockingStation instance to respond_to the method release_bike' do
  docking_station = DockingStation.new
  expect { docking_station.release_bike }.not_to raise_error
end

it 'docks a bike' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end

it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

end

