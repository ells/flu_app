require File.dirname(__FILE__) + '/../spec_helper'

describe SymptomSetsController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => SymptomSet.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    SymptomSet.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    SymptomSet.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(symptom_set_url(assigns[:symptom_set]))
  end

  it "edit action should render edit template" do
    get :edit, :id => SymptomSet.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    SymptomSet.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SymptomSet.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    SymptomSet.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SymptomSet.first
    response.should redirect_to(symptom_set_url(assigns[:symptom_set]))
  end

  it "destroy action should destroy model and redirect to index action" do
    symptom_set = SymptomSet.first
    delete :destroy, :id => symptom_set
    response.should redirect_to(symptom_sets_url)
    SymptomSet.exists?(symptom_set.id).should be_false
  end
end
