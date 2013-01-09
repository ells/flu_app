class SymptomsController < ApplicationController
  
  before_filter :admin_user,     only: [:create, :destroy, :edit]

  def create
    @symptom = current_user.symptoms.build(params[:name])
    if @symptom.save
      flash[:success] = "Symptom created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
  
  def edit
  end
  
 def index
    symptom = Symptom.paginate(page: params[:page])
  end
end