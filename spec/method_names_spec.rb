require File.dirname(__FILE__) + '/spec_helper'

describe "Method Names" do
  it "should return an array of method names as strings" do
    methods.first.should be_an_instance_of( String )
  end
end
