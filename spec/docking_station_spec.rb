require "docking_station"
# require "bike"

describe DockingStation do

  it {is_expected.to respond_to(:release_bike)}

  it { is_expected.to respond_to(:dock).with(1).argument }

  it "allows a user to set a capacity" do
    expect(DockingStation.new(15).capacity).to eq 15
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "checks default capacity is 20" do
    expect(subject.capacity).to eq 20
  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe "#dock" do
     it "raises an error if the station is full" do
       subject.capacity.times { subject.dock(Bike.new) }
       expect { subject.dock(Bike.new) }.to raise_error "Docking station full"
     end
  end  

end


#  it "releases working bikes" do
#    bike = subject.release_bike
#    expect(bike).to be_working
#  end
