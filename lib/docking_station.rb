require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail "no bikes available" unless @bike
    # Bike.new
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  # def bike
  #   @bike
  # end

end