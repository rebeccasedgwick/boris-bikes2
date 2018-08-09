require_relative "bike"

class DockingStation

  attr_reader :show_bike

  def initialize
    @show_bike = []
  end

  def release_bike
    raise 'no bikes to release' if @show_bike.empty?
    @show_bike.pop
  end

  def dock(bike)
    raise 'Docking Station is full!' unless @show_bike.count < 20
    @show_bike << bike
  end

end
