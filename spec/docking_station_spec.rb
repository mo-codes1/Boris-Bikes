require './lib/docking_station'

describe DockingStation do

it 'expects a DockingStation instance to respond_to the method release_bike' do
  docking_station = DockingStation.new
  expect { docking_station.release_bike }.not_to raise_error
end

=begin it 'expects station_release.bike to return a new instance of the Bike class' do
  docking_station = DockingStation.new
  expect DockingStation.release_bike.working?.to eq true
end
=end

end