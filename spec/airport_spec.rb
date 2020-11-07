require 'airport'

describe Airport do
  let(:plane) { instance_double("Plane") }

  it "should be" do
    expect(subject).to be
  end

  it "should allow to instantiate with a specified capacity" do
    giant_capacity = 1000
    giant_airport = Airport.new(giant_capacity)
    expect(giant_airport.capacity).to eq giant_capacity #testing state?
  end

  describe "#take_off" do
    it "should output plane is no longer at airport when taking off" do
      expect do
        subject.take_off(plane)
      end.to output("#{plane} is no longer at the airport\n").to_stdout
    end

    it "should be able to take off" do
      expect(subject.take_off(plane)).to_not include plane
    end
  end

  describe "#land" do
    it "should be able to land" do
      expect(subject.land(plane)).to include plane
    end

    it "should prevent landing when airport is full by raising error" do
      Airport::DEFAULT_CAPACITY.times { subject.land(plane) }

      expect{subject.land(plane)}.to raise_error "Airport is full"
    end
  end
end
