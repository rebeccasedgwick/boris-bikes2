require_relative "bike"
class DockingStation
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
# ideally you'd want to check that the bike is actually a Bike object

     #(bike) << this needs to have a parameter
# needs to put a bike in an array
  end

# def has_bikes?
#   needs to read the array and return if it has bikes or not
#   this is / uses the attr_reader on @array
# end

# @array  = []
# this needs to store the bikes and be accessible to other methods

end
