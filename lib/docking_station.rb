require_relative "bike"

class DockingStation
  attr_reader :show_bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @show_bike = bike
  end

end
