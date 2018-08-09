require "docking_station"
require "bike"

describe DockingStation do

  it "releases a bike" do
    expect(subject).to respond_to :release_bike
  end

  it "release bike gets a working bike" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "returns docked bike when show_bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.show_bike[-1]).to eq bike
  end

  it "should throw an exception when release is called on an empty .DockingStation" do
    expect{subject.release_bike}.to raise_error('no bikes to release')
  end

  it "should throw an exception when dock is called on a full .DockingStation" do
    20.times {subject.dock Bike.new}
    expect{subject.dock(Bike.new)}.to raise_error('Docking Station is full!')
  end

  it "should allow a bike to be docked if there are <20 bikes in the station" do
    19.times {subject.dock(Bike.new)}
    subject.dock(Bike.new)
    expect(subject.show_bike.count).to eq 20
  end

end
