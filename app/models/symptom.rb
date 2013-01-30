class Symptom < ActiveRecord::Base
  attr_accessible :name, :metrics, :metrics_attributes
  belongs_to :symptom_set
  has_many :metrics, :dependent => :destroy
  accepts_nested_attributes_for :metrics, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy=>true
end
