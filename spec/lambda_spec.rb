require File.dirname(__FILE__) + '/spec_helper'

describe "Lambda" do

  cylindrical_area = ->( arg1, arg2 ){ ( Math::PI * arg1 ** 2 ) * arg2 }
  
  it "should allow alternate lambda syntax" do
    cylindrical_area.call( 1, 2 ).should be_close( 6, 1 )
  end

end 

