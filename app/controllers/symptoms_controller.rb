class SymptomsController < ApplicationController
  
  def show
    @symptom = Symptom.find(params[:name])
  end
  
  def index
    @symptoms = Symptom.all
  end

  
end
