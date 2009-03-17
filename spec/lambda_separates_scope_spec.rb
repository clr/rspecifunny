require File.dirname(__FILE__) + '/spec_helper'

describe "Scope inside Lambda" do
  it "should keep a separate scope inside a lambda" do
    d = 0 
    a = lambda{ |b, c| d = b + c }
    a.call( 2, 3 ).should equal( 5 )

    d.should equal( 5 )
  end
end
