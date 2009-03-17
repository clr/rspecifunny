require File.dirname(__FILE__) + '/spec_helper'

describe "Hash" do

  h = { :a => 1, :b => 2, :c => 3, :d => 4 }

  it "should return the elements in order" do
    h.to_a.should == [ [ :a, 1 ], [ :b, 2 ], [ :c, 3 ], [ :d, 4 ] ]
  end

  it "should print a pretty inspection" do
    h.to_s.should == "{:a=>1, :b=>2, :c=>3, :d=>4}"
  end
end 

