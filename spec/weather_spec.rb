require 'weather'

describe Weather do
  it "returns true or false for stormy condition" do
    expect(Weather::stormy?).to eq(true).or eq(false)
  end
end
