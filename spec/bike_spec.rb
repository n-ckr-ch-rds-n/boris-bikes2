require 'bike'

describe Bike do
  it {is_expected.to respond_to(:working?)}

  describe "#report_bike" do
    it "returns true if a broken bike is reported" do
      bike = Bike.new
      expect(bike.report_bike).to eq true
    end
  end

  describe "#broken?" do
    it "returns true if a bike is broken" do
      bike = Bike.new
      expect(bike.broken?).to eq true
    end
  end
#  it "bike responds to dock bike" do
#    expect(Bike.new).to respond_to(:dock_bike)
#  end
  #
  # it "docks bike" do
  #   expect(Bike.new.dock_bike).to eq true
  # end
  #
  # it "checks if bike is docked" do
  #   expect(Bike.new.dock_bike?).to eq true
  # end
end
