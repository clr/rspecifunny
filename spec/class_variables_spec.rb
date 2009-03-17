require File.dirname(__FILE__) + '/spec_helper'

class A
  @@var = "I exist!"
  
  def self.do_i_exist?
    return @@var
  end
end

class B < A
end
  
describe "Class Variables" do
  it "should inheret the class variable" do
    B.do_i_exist?.should == "I exist!"
  end
end
