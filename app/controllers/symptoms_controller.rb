class SymptomsController < ApplicationController
  
  def show
    @symptom = Symptom.find(params[:name])
  end
  
  def index
  end

  def new
  end
  
end
