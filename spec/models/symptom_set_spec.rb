require File.dirname(__FILE__) + '/../spec_helper'

describe SymptomSet do
  it "should be valid" do
    SymptomSet.new.should be_valid
  end
end
