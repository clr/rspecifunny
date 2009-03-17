require File.dirname(__FILE__) + '/spec_helper'

describe "Hash" do

  h = { a: 1, b: 2, c: 3, d: 4 }

  it "should allow alternate json-style hash" do
    h.should == { :a => 1, :b => 2, :c => 3, :d => 4 }
  end

end 

