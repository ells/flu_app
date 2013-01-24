class SymptomsController < ApplicationController
  
  def show
    @symptom = Symptom.find(params[:name])
  end
  
  def index
    @symptomable = Disease.find(params[:name])
    @symptoms = @symptomable.symptoms
  end

  def new
    
  end
  
end
