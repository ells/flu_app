class SymptomSubmissionsController < ApplicationController
  
  def index
  end
  
  def new
    @symptom_submission = SymptomSubmission.new
  end

  def create
    @symptom_submission = current_user.symptom_submissions.build(params[:symptom_submission])
    if @symptom_submission.save
      flash[:success] = "Symptoms submitted!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end


  def destroy
  end
  
private
    
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
    
    helper_method :random_symptom_set, :weighted_symptom_set, :disease_symptom_set
  
end


