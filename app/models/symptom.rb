class Symptom < ActiveRecord::Base
  attr_accessible :name, :metrics, :metrics_attributes
  has_many :metrics, as: :metricizable
  belongs_to :symptomable, polymorphic: true
  accepts_nested_attributes_for :metrics, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy=>true
end
