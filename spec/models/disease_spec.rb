require File.dirname(__FILE__) + '/../spec_helper'

describe Disease do
  it "should be valid" do
    Disease.new.should be_valid
  end
end
