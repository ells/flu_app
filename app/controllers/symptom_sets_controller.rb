class SymptomSetsController < ApplicationController
  
  def index
  end
  
  def new
    @symptom_set = SymptomSet.new
  end
  
  def create
    @symptom_set = current_user.symptom_sets.build(params[:symptom_set_id])
    if @symptom_set.save
      flash[:success] = "Symptoms submitted!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
end

