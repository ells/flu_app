class DiseasesController < ApplicationController
  def index
    @diseases = Disease.all
  end

  def show
    @disease = Disease.find(params[:id])
  end

  def new
    @disease = Disease.new
    2.times do
      symptom = @disease.symptoms.build
      3.times {symptom.metrics.build}
    end
  end

  def create
    @disease = Disease.new(params[:disease])
    if @disease.save
      redirect_to @disease, :notice => "Successfully created disease."
    else
      render :action => 'new'
    end
  end

  def edit
    @disease = Disease.find(params[:id])
  end

  def update
    @disease = Disease.find(params[:id])
    if @disease.update_attributes(params[:disease])
      redirect_to @disease, :notice  => "Successfully updated disease."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @disease = Disease.find(params[:id])
    @disease.destroy
    redirect_to diseases_url, :notice => "Successfully destroyed disease."
  end
end
