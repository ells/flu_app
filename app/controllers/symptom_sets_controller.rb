class SymptomSetsController < ApplicationController
  before_filter :signed_in_user

  
  def index
    @symptom_sets = SymptomSet.all
  end

  def show
    @symptom_set = SymptomSet.find(params[:id])
  end

  def new
    @symptom_set = SymptomSet.new
    2.times do
      symptom = @symptom_set.symptoms.build
      1.times { symptom.metrics.build }
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
end
