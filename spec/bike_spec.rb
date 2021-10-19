require './lib/boris_bikes'

describe Bike do
  it 'expects Bike instance to respond to the method working?' do
    bike = Bike.new
    expect { bike.working? }.not_to raise_error
  end
end
