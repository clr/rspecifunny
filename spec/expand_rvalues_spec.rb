require File.dirname(__FILE__) + '/spec_helper'

describe "Variables set with asterisk" do
  it "should expand an array to its elements" do
    a, b, c, d = 0, [ 1, 2 ], 3, 4

    a.should equal( 0 )
    b.should ==( [ 1, 2 ] )
    c.should equal( 3 )
    d.should equal( 4 )

    a, b, c, d = 0, *[ 1, 2 ]

    a.should equal( 0 )
    b.should equal( 1 )
    c.should equal( 2 )
    d.should equal( nil )

    a = *[ 1 ]
    a.should ==( 1 )
  end
end
