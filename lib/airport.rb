class Airport
  attr_reader :hangar

  DEFAULT_CAPACITY = 6

  def initialize
    @hangar = []
  end

  def take_off(plane)
    hangar.delete(plane)
    puts "#{plane} is no longer at the airport"
    hangar # doing this just to be able to test behaviour ???
  end

  def land(plane)
    raise "Airport is full" if full?
    hangar << plane
  end

  private

  def full?
    hangar.size == DEFAULT_CAPACITY
  end
end
