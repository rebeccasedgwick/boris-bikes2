require_relative "bike"

class DockingStation

  attr_reader :show_bike

  def release_bike
    raise 'no bikes to release' unless @show_bike
    @show_bike
  end

  def dock(bike)
    raise 'Docking Station is full!' unless @show_bike == nil
    @show_bike = bike
  end

end
