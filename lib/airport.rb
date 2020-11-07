require 'weather'

class Airport
  extend Weather

  attr_reader :hangar, :capacity

  DEFAULT_CAPACITY = 6

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @hangar = []
  end

  def take_off(plane)
    raise "Cannot take off in the middle of the storm" if stormy?

    hangar.delete(plane)
    puts "#{plane} is no longer at the airport"

    hangar # doing this just to be able to test behaviour ???
  end

  def land(plane)
    raise "Cannot land in the middle of the storm" if stormy?
    raise "Airport is full" if full?
    hangar << plane
  end

  private

  def full?
    hangar.size == capacity
  end

  def stormy?
    Weather::stormy?
  end
end
