require "bike"

describe Bike do
  it "object responds to .working?" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end 

  it "can be reported as broken" do
    subject.report_broken
    expect(subject).to be_broken
  end
end