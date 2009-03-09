require File.dirname(__FILE__) + '/spec_helper'

describe "Pass for 1.8" do
  it "should not keep separate local scope for lambda" do
    a = lambda{ |b, c| a = b + c }
    a.call( 2, 3 ).should equal( 5 )
    a.should be_an_instance_of( Fixnum )
  end
end
