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
  it "responds to dock_bike(bike)" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "it responds to show bike" do
    expect(subject).to respond_to(:show_bike)
  end


end
