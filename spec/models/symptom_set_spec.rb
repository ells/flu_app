require 'spec_helper'

describe SymptomSet do
  let(:user) {FactoryGirl.create(:user) }
  before {@symptom_set = SymptomSet.new()}
  
  
  subject {@symptom_set}
  
  it {should respond_to(:user_id)}
  it {should respond_to(:user)}  
 
end
