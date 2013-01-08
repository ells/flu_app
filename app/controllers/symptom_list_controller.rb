class SymptomListController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
  end

 def create
    @symptom_list = current_user.symptom_list.build(params[:symptom_list])
    if @symptom_list.save
      flash[:success] = "Symptoms submitted!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end


  def destroy
  end
end