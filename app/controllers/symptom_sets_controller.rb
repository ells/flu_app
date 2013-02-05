class SymptomSetsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :new]
  before_filter :correct_user, only: [:index, :show, :edit, :destroy, :update]


  
  def index
    user = User.find(params[:user_id])
    @symptom_sets = user.symptom_sets.find_by_user_id(params[:user_id])
  end

  def show
    user = User.find(params[:user_id])
    @symptom_set = user.SymptomSet.find(params[:id])
  end

  def new
    @symptom_set = SymptomSet.new
    3.times do
      symptom = @symptom_set.symptoms.build
    end
  end



   def create
    @symptom_set = current_user.symptom_sets.build(params[:symptom_sets])
    if @symptom_set.save
      flash[:success] = "Symptoms submitted!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def edit
    @symptom_set = SymptomSet.find(params[:id])
  end

  def update
    @symptom_set = SymptomSet.find(params[:id])
    if @symptom_set.update_attributes(params[:symptom_set])
      redirect_to @symptom_set, :notice  => "Successfully updated symptom set."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @symptom_set = SymptomSet.find(params[:id])
    @symptom_set.destroy
    redirect_to symptom_sets_url, :notice => "Successfully destroyed symptom set."
  end
  
  private

    def correct_user
      @symptom_set = current_user.symptom_sets.find_by_id(params[:id])
      redirect_to root_url if @symptom_set.nil?
    end
end
