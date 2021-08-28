require "docking_station"

describe DockingStation do
  it "object responds to release_bike" do
    expect(subject).to respond_to(:release_bike)
    # it { is_expected.to respond_to :release_bike }
  end

  it "get a bike from .release_bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_a Bike
  end

  describe "#release_bike" do
    it "raises an error if there are no bikes" do
      expect {subject.release_bike}.to raise_error("no bikes available")
    end
  end

  it "expects a bike to be working" do
    bike = Bike.new
    # expect(bike.working?).to eq true
    expect(bike).to be_working
  end

  it "responds to #dock with 1 argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "docks something" do
    bike = Bike.new
    p bike.class
    p subject.dock(bike).class
    expect(subject.dock(bike)).to include bike # bike is a Bike, subject.dock(bike) is an Array, how can they be equal??? 
    # to include instead of to eq maybe???
  end

  it "responds to bike method" do
    expect(subject).to respond_to(:bikes)
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include bike# bike is a Bike, subject.dock(bike) is an Array, how can they be equal??? 
    # to include instead of to eq maybe???
  end

  describe "#dock" do
    it "raises an error if there is alrady a bike docked" do
      # bike = Bike.new
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error("there is already a bike docked here")
    end
  end
end