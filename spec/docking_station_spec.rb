require './lib/docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  new_bike = Bike.new

  it "expects docking station to return error message if no bikes available" do
    expect { subject.release_bike }.to raise_error("There are no bikes available")
  end

  it "expects docking station to return error message if docking station is full" do
    subject.capacity.times { subject.dock Bike.new } 
    expect { subject.dock Bike.new }.to raise_error("This docking station is full")
  end

  it { expect(docking_station).to respond_to(:release_bike) }
  it { expect(new_bike).to respond_to(:working?) }
  it { expect(new_bike.working?).to eq true }

  it { is_expected.to respond_to(:dock).with(1).argument}

  it "releases working bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it "doesnt release broken bikes" do
    bike = Bike.new
    broken_bike = bike.report_broken_bike
    expect(subject.bikes).not_to include broken_bike
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq(DockingStation::DEFAUlT_CAPACITY)
  end

end

