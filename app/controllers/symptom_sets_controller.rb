class SymptomSetsController < ApplicationController
  
  before_filter :signed_in_user
  
  def new
    @symptom_set = SymptomSet.new
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


  def index
  end

  def destroy
  end
end
