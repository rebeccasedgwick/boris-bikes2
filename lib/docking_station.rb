require_relative "bike"

DEFAULT_CAPACITY = 20

class DockingStation

  attr_reader :show_bike

  def initialize
    @show_bike = []
  end

  def release_bike
    raise 'no bikes to release' if empty?
    @show_bike.pop
  end

  def dock(bike)
    raise 'Docking Station is full!' if full?
    @show_bike << bike
  end

  private
  def full?
    @show_bike.count >= DEFAULT_CAPACITY
  end

  def empty?
    @show_bike.empty?
  end

end
