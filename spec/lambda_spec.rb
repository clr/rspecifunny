require File.dirname(__FILE__) + '/spec_helper'

describe "Lambda" do

  cylindrical_area = ->( arg1, arg2 ){ ( Math::PI * arg1 ** 2 ) * arg2 }

  it "should allow alternate json-style hash" do
    h.should == { :a => 1, :b => 2, :c => 3, :d => 4 }
  end

end 

