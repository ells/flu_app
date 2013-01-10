class SymptomsController < ApplicationController
  
  def index
    @symptomable = Disease.find(params[:disease_id])
    @symptoms = @symptomable.symptoms
  end

  def new
  end
  
end
