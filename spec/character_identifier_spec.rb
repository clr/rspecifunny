require File.dirname(__FILE__) + '/spec_helper'

describe "Question mark preceding character" do
  it "should return the char code integer" do
    ?a.should equal 97
  end
end
