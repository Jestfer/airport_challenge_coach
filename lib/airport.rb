class Airport
  def initialize
    @hangar = []
  end

  def take_off(plane)
    @hangar.delete(plane)
    puts "#{plane} is no longer at the airport"
    @hangar # doing this just to be able to test behaviour ???
  end

  def land(plane)
    @hangar << plane
  end
end
