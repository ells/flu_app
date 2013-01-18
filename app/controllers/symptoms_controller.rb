class SymptomsController < ApplicationController
  
  def show
    @symptom = Symptom.find(params[:name])
  end
  
  def index
    @symptomable = Disease.find(params[:name])
    @symptoms = @symptomable.symptoms
  end
      
      
  def random_symptom_set   
    @symptoms = Symptom.find(:all).sample(5)
  end
  
  def weighted_symptom_set
    @symptoms = Symptom.find(:all, :conditions => ['selection_weight > ?', 0.8])
  end
  
  def disease_symptom_set
    @symptomable = Disease.find(params[:name])
    @symptoms = @symptomable.symptoms
  end

  def new
    
  end
  
end
