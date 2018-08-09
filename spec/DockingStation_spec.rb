require "docking_station"
require "bike"

describe DockingStation do

  it "releases a bike" do
    expect(subject).to respond_to :release_bike
  end

  it "release bike gets a working bike" do
    bike = subject.release_bike
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

end
