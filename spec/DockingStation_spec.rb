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

# Write a unit test for docking a bike at a docking station
  it "returns bike when dock(bike) called" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bike when show_bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.show_bike).to eq bike
  end

  it "should throw an exception when release is called on an empty .DockingStation" do
    expect{subject.release_bike}.to raise_error('no bikes to release')
  end

  it "should throw an exception when dock is called on a full .DockingStation" do
    bike = Bike.new
    subject.dock(bike)
    expect{subject.dock(bike)}.to raise_error('Docking Station is full!')
  end

end
