class MetricsController < ApplicationController
  
  def show
    @metric = Metric.find(params[:name])
  end
  
  def index
    @metricizable = Symptom.find(params[:name])
    @metrics = @metricizable.metrics
  end
    
  def symptoms_metrics #AKA index
    @metricizable = Symptom.find(params[:name])
    @metrics = @metricizable.metrics
  end

  def new
    
  end
  
end
