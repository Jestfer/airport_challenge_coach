require 'airport'

describe Airport do
  let(:plane) { instance_double("Plane") }

  it "should be" do
    expect(subject).to be
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
  end
end
