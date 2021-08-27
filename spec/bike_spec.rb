require "bike"

describe Bike do
  it "object responds to .working?" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end 
end