require File.expand_path("../../../base", __FILE__)

describe Vagrant::Action::Environment do
  let(:instance) { described_class.new }

  it "should be a hash" do
    instance.should be_empty
    instance["foo"] = "bar"
    instance["foo"].should == "bar"
  end

  it "should be a hash accessible by string or symbol" do
    instance["foo"] = "bar"
    instance[:foo].should == "bar"
  end

  it "should keep track of interrupted state" do
    instance.should_not be_interrupted
    instance.interrupt!
    instance.should be_interrupted
  end
end
