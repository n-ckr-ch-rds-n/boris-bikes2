require "docking_station"
# require "bike"

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

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
    it "docks bikes" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
     it "raises an error if there is already a bike" do
       bike = Bike.new
       subject.dock(bike)
       expect { subject.dock(Bike.new) }.to raise_error "Bike already docked"
     end
  end



  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end

#require_relative './lib/docking_station.rb'


  # it "can we release_bike?" do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.release_bike).to eq bike
  # end

#  it "releases working bikes" do
#    bike = subject.release_bike
#    expect(bike).to be_working
#  end


#Use an instance variable with attr_reader to
#do a full test-implementation
#cycle for the second User Story above
# did I contribute something?
