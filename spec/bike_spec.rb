require './lib/bike'

describe Bike do
  bike = Bike.new
  
  it { is_expected.to respond_to (:working?) }
  it { expect(subject).to respond_to(:report_broken_bike) }

  it "reports a broken bike" do
    subject.report_broken_bike
    expect(subject).to be_broken
  end  



end
