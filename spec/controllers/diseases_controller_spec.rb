require File.dirname(__FILE__) + '/../spec_helper'

describe DiseasesController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Disease.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Disease.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Disease.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(disease_url(assigns[:disease]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Disease.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Disease.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Disease.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Disease.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Disease.first
    response.should redirect_to(disease_url(assigns[:disease]))
  end

  it "destroy action should destroy model and redirect to index action" do
    disease = Disease.first
    delete :destroy, :id => disease
    response.should redirect_to(diseases_url)
    Disease.exists?(disease.id).should be_false
  end
end
