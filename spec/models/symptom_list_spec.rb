require 'spec_helper'

describe SymptomList do

	let(:user) { FactoryGirl.create(:user) }
	before { @symptom_list = user.SymptomList.build(
	          symptom_id: 69, symptom_metric: 42, user_id: user.id, geolocation: "over there")

	subject { @symptom_list }

    it { should respond_to(:symptom_id) }
    it { should respond_to(:symptom_metric)}
    it { should respond_to(:geolocation)}
    it { should respond_to(:user_id) }
    it { should respond_to(:user) }
    its(:user) { should == user }

    it { should be_valid }

    describe "accessible attributes" do
      it "should not allow access to user_id" do
		expect do 
			SymptomList.new(user_id: user.id)
        end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
	  end
	end


	describe "when user_id is not present" do
	    before { @symptom_list.user_id = nil }
	    it { should_not be_valid }
	end
end