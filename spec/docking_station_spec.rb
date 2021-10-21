require './lib/docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  new_bike = Bike.new

  it 'expects docking station to return error message if no bikes available' do
    expect { subject.release_bike }.to raise_error("There are no bikes available")
  end

  it { expect(docking_station).to respond_to(:release_bike) }
  it { expect(new_bike).to respond_to(:working?) }
  it { expect(new_bike.working?).to eq true }

  it { is_expected.to respond_to(:dock).with(1).argument}

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

end

