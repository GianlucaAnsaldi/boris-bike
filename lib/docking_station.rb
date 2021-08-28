require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "no bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "there is already a bike docked here" if @bikes.count >= 20
    @bikes << bike
  end

  # def bike
  #   @bike
  # end

end