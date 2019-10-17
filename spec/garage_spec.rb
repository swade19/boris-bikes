require "garage"

describe Garage do
  let(:garage) { Garage.new }

  it "is a Garage" do
    expect(garage).to be_a(Garage)
  end

  it "can store broken bikes" do
    expect(garage.stored_broken_bikes).is_a?(Array)
  end
end
