require "van"

describe Van do
  let(:van) { Van.new }

  it "is a instance of van class" do
    expect(van).to be_instance_of(Van)
  end

  it "can store broken bikes" do
    expect(van.broken_bikes).is_a?(Array)
  end
end
