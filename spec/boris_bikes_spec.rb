require './lib/boris_bikes'

describe DockingStation do

it 'expects a DockingStation instance to respond_to the method release_bike' do
  docking_station = DockingStation.new
  expect { docking_station.release_bike }.not_to raise_error
end

end