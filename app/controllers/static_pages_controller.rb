class StaticPagesController < ApplicationController
  def home
    @symptom_list = current_user.symptom_list.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
